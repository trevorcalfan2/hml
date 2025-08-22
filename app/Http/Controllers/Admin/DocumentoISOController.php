<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Doctype;
use App\Models\Process;
use App\Models\DocumentoIso;
use App\Models\Area;
use App\Models\DocumentoIsoVersion;
use App\Models\DocumentoIsoLog;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Auth;

class DocumentoIsoController extends Controller
{
    /**
     * Listado de documentos ISO
     */
   public function index()
{
    $admin = Auth::guard('admin')->user();

    if (!$admin || !$admin->role_id) {
        // Superadmin ve todos los documentos
        $documentos = DocumentoIso::with(['process.area', 'doctype', 'responsableAdmin', 'aprobador'])
            ->orderBy('id', 'DESC')
            ->get();
    } else {
        // 1. Obtener el nombre del rol (ej: "Coordinador Gestión Humana")
        $rolNombre = strtolower($admin->role->name); // "coordinador gestión humana"

        // 2. Extraer nombre de área (ej: "gestión humana")
        // Busca la primera palabra clave ("gestión", etc.) y corta el prefijo
        $areas = Area::all();
        $areaCoincidente = $areas->first(function ($area) use ($rolNombre) {
            return str_contains($rolNombre, strtolower($area->nombre));
        });

        if (!$areaCoincidente) {
            // No tiene área asignada, devuelve vacío
            $documentos = collect();
        } else {
            // 3. Obtener procesos de esa área
            $procesos = Process::where('area_id', $areaCoincidente->area_id)->pluck('process_id');

            // 4. Documentos solo de esos procesos
            $documentos = DocumentoIso::whereIn('process_id', $procesos)
                ->with(['process.area', 'doctype', 'responsableAdmin', 'aprobador'])
                ->orderBy('id', 'DESC')
                ->get();
        }
    }

    return view('admin.documento_iso.index', compact('documentos'));
}




    /**
     * Formulario crear
     */
    

public function create()
{
    $admin = Auth::guard('admin')->user();

    // Filtrar áreas/procesos según el rol (esto ya lo tienes bien)
    if (!$admin->role_id) {
        $areas = Area::all();
        $procesos = Process::with('area')->get();
    } else {
        $rolNombre = strtolower($admin->role->name);
        $areasAll = Area::all();
        $areaCoincidente = $areasAll->first(function ($area) use ($rolNombre) {
            return str_contains($rolNombre, strtolower($area->nombre));
        });

        if ($areaCoincidente) {
            $areas = collect([$areaCoincidente]);
            $procesos = Process::where('area_id', $areaCoincidente->area_id)->with('area')->get();
        } else {
            $areas = collect();
            $procesos = collect();
        }
    }

    // Solo necesitas esto
    $doctypes = Doctype::all();

    return view('admin.documento_iso.create', [
        'areas' => $areas,
        'procesos' => $procesos,
        'doctypes' => $doctypes,
        'admin' => $admin,
    ]);
}


public function responsablesPorArea($areaNombre)
{
    $areaNombre = urldecode($areaNombre);

    // Variaciones de posibles nombres de rol
    $nombresRoles = [
        'Coordinador ' . $areaNombre,
        'Jefe ' . $areaNombre,
        'Coordinador de ' . $areaNombre,
        'Jefe de ' . $areaNombre,
    ];

    $roles = \App\Models\Role::whereIn('name', $nombresRoles)->pluck('id');
    if ($roles->isEmpty()) {
        return response()->json([]); // Retorna vacío si no hay
    }

    $responsables = \App\Models\Admin::whereIn('role_id', $roles)
        ->get(['id', 'first_name', 'last_name', 'role_id']);

    foreach ($responsables as $admin) {
        $admin->role_name = optional($admin->role)->name;
    }

    return response()->json($responsables);
}

public function aprobadoresPorArea($areaNombre)
{
    $areaNombre = urldecode($areaNombre);

    // Variaciones de posibles nombres de rol
    $nombresRoles = [
        'Coordinador ' . $areaNombre,
        'Jefe ' . $areaNombre,
        'Coordinador de ' . $areaNombre,
        'Jefe de ' . $areaNombre,
    ];

    $roles = \App\Models\Role::whereIn('name', $nombresRoles)->pluck('id');
    if ($roles->isEmpty()) {
        return response()->json([]); // Retorna vacío si no hay
    }

    $aprobadores = \App\Models\Admin::whereIn('role_id', $roles)
        ->get(['id', 'first_name', 'last_name', 'role_id']);

    foreach ($aprobadores as $admin) {
        $admin->role_name = optional($admin->role)->name;
    }

    return response()->json($aprobadores);
}















    /**
     * AJAX: Listar procesos según área
     */
    public function procesosPorArea($areaId)
    {
        $procesos = \App\Models\Process::where('area_id', $areaId)
            ->get(['process_id', 'nombre']);
        return response()->json($procesos);
    }

    /**
     * Guardar nuevo documento
     */
    public function store(Request $request)
    {
        $admin = Auth::guard('admin')->user();

        // Validar proceso pertenece a su área/rol (importante)
        if ($admin->role_id) {
            $rolNombre = strtolower($admin->role->name);
            $areas = Area::all();
            $areaCoincidente = $areas->first(function ($area) use ($rolNombre) {
                return str_contains($rolNombre, strtolower($area->nombre));
            });

            if ($areaCoincidente) {
                $procesoPermitido = Process::where('process_id', $request->process_id)
                    ->where('area_id', $areaCoincidente->area_id)
                    ->exists();
                if (!$procesoPermitido) {
                    return back()->withErrors(['process_id' => 'No tiene permisos sobre este proceso'])->withInput();
                }
            } else {
                return back()->withErrors(['area_id' => 'No tiene área asignada'])->withInput();
            }
        }

        // Reglas de validación
        $rules = [
            'doc_id'           => 'nullable|string|max:255',
            'estado'           => 'required|string|max:255',
            'responsable'      => 'required|string|max:255',
            'process_id'       => 'required|exists:process,process_id',
            'doctype_id'       => 'required|exists:doctype,doctype_id',
            'archivo'          => 'required|file|mimes:pdf,doc,docx',
            'fecha_aprobacion' => 'nullable|date',
            'anio'             => 'nullable|integer',
            'mes'              => 'nullable|string|max:25',
            'comentarios'      => 'nullable|string|max:1000',
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $data = $request->all();

        // Agrega el usuario que crea el documento
        $data['created_by'] = $admin->id;

        // Solo jefes/coordinadores/superadmin pueden dejar estado como no "EN REVISIÓN"
        $rol = $admin->role;
        $rolNombre = $rol ? strtolower($rol->name) : '';
        $isJefe = $rol && (str_contains($rolNombre, 'coordinador') || str_contains($rolNombre, 'jefe'));
        $isSuperAdmin = empty($admin->role_id);

        if (!$isSuperAdmin && !$isJefe) {
            $data['estado'] = 'EN REVISIÓN';
        }

        // Subida del archivo principal
        if ($request->hasFile('archivo')) {
            $filename = time() . '_' . $request->file('archivo')->getClientOriginalName();
            $request->file('archivo')->move(public_path('uploads/documentos_iso'), $filename);
            $data['archivo'] = $filename;
        }

        // Inicialización de campos ISO
        $data['historial_versiones'] = '';
        $data['modificaciones'] = '';
        $data['fecha_revision'] = null;

        // Crear documento
        $documento = DocumentoIso::create($data);

        // Crear versión inicial
        if (!empty($data['archivo'])) {
            DocumentoIsoVersion::create([
                'documento_iso_id' => $documento->id,
                'archivo'          => $data['archivo'],
                'comentario'       => $request->input('comentarios', 'Versión inicial'),
                'user_id'          => Auth::id() ?? 1,
                'created_at'       => $data['fecha_aprobacion'] ?? now(),
            ]);
        }

        // Log de creación
        DocumentoIsoLog::create([
            'documento_iso_id' => $documento->id,
            'user_id'          => Auth::id() ?? 1,
            'accion'           => 'Creación',
            'descripcion'      => 'Documento creado',
            'created_at'       => now(),
        ]);

        Session::flash('success', 'Documento ISO creado correctamente');
        return redirect()->route('admin.documento_iso.index');
    }





    public function edit($id)
    {
        $documento = DocumentoIso::with(['versiones.user', 'logs'])->findOrFail($id);
        $areas = Area::all();
        $procesos = Process::with('area')->get();
        $doctypes = Doctype::all();

        // (Opcional) Puedes cargar aprobadores para cambiar el aprobador en edición
        $admin = Auth::guard('admin')->user();
        if (!$admin->role_id) {
            $aprobadores = \App\Models\Admin::with('role.areas')->get();
        } else {
            $aprobadores = collect([$admin->load('role.areas')]);
        }


        \Log::info('Datos enviados a edit:', [
    'documento' => $documento->toArray(),
    'areas' => $areas->toArray(),
    'procesos' => $procesos->toArray(),
    'doctypes' => $doctypes->toArray(),
    'aprobadores' => $aprobadores->toArray(),
    'admin' => $admin ? $admin->toArray() : null,
]);

        return view('admin.documento_iso.edit', compact('documento', 'areas', 'procesos', 'doctypes', 'aprobadores'));
    }

    /**
     * Actualizar documento
     */
    public function approve($id, Request $request)
{
    $documento = DocumentoIso::findOrFail($id);

    $admin = Auth::guard('admin')->user();
    $rol = $admin->role;
    $rolNombre = $rol ? strtolower($rol->name) : '';

    $isJefe = $rol && (str_contains($rolNombre, 'coordinador') || str_contains($rolNombre, 'jefe'));
    $isSuperAdmin = empty($admin->role_id);

    if (!$isSuperAdmin && !$isJefe) {
        Session::flash('error', 'No tienes permisos para aprobar este documento.');
        return back();
    }

    // Marcar aprobación    
    $documento->estado = 'APROBADO';
    $documento->aprobado_por = $admin->first_name . ' ' . $admin->last_name;
    $documento->fecha_aprobacion = now();
    $documento->save();

    // Registrar versión aprobada (si no existe ya una igual)
    DocumentoIsoVersion::create([
        'documento_iso_id' => $documento->id,
        'archivo' => $documento->archivo,
        'comentario' => 'Aprobación oficial',
        'user_id' => $admin->id,
        'created_at' => now(),
    ]);

    // Log de aprobación
    DocumentoIsoLog::create([
        'documento_iso_id' => $documento->id,
        'user_id' => $admin->id,
        'accion' => 'Aprobación',
        'descripcion' => 'Documento aprobado por ' . $documento->aprobado_por,
        'created_at' => now(),
    ]);

    Session::flash('success', 'Documento aprobado correctamente.');
    return back();
}

  public function update(Request $request, $id)
{
    $documento = DocumentoIso::findOrFail($id);

    $admin = Auth::guard('admin')->user();
    $rol = $admin->role;
    $rolNombre = $rol ? strtolower($rol->name) : '';
    $esJefe = $rol && (str_contains($rolNombre, 'coordinador') || str_contains($rolNombre, 'jefe'));
    $esResponsable = $admin->id == $documento->responsable;

    // BLOQUEO según estado y rol
    if (in_array($documento->estado, ['APROBADO', 'VIGENTE'])) {
        return back()->withErrors(['error' => 'No puedes modificar un documento aprobado o vigente.'])->withInput();
    }
    // Solo el responsable puede editar si OBSERVADO
    if ($documento->estado === 'OBSERVADO' && !$esResponsable) {
        return back()->withErrors(['error' => 'Solo el responsable puede subir nueva versión en este estado.'])->withInput();
    }
    // Solo el jefe puede editar si EN REVISIÓN
    if ($documento->estado === 'EN REVISIÓN' && !$esJefe) {
        return back()->withErrors(['error' => 'Solo el jefe o coordinador puede revisar este documento.'])->withInput();
    }

    // Reglas de validación
    $rules = [
        'doc_id'           => 'nullable|string|max:255',
        'estado'           => 'required|string|max:255',
        'responsable'      => 'required|string|max:255',
        'process_id'       => 'required|exists:process,process_id',
        'doctype_id'       => 'required|exists:doctype,doctype_id',
        'archivo'          => 'nullable|file|mimes:pdf,doc,docx',
        'fecha_revision'   => 'nullable|date',
        'fecha_aprobacion' => 'nullable|date',
        'anio'             => 'nullable|integer',
        'mes'              => 'nullable|string',
        'comentarios'      => 'nullable|string|max:1000',
        'modificaciones'   => 'nullable|string|max:1000',
        'observaciones'    => 'nullable|string|max:1000',
    ];

    // Observaciones solo obligatorias para jefe cuando pasa a OBSERVADO
    if ($esJefe && $request->estado === 'OBSERVADO') {
        $rules['observaciones'] = 'required|string|max:1000';
    }

    $validator = Validator::make($request->all(), $rules);
    if ($validator->fails()) {
        return back()->withErrors($validator)->withInput();
    }

    $data = $request->all();

    // ------ 1. RESPONSABLE SUBE NUEVA VERSIÓN (cuando estado = OBSERVADO) ------
    if ($documento->estado === 'OBSERVADO' && $esResponsable) {
        // Permitir solo subir archivo y comentarios de versión
        if ($request->hasFile('archivo')) {
            if ($documento->archivo && file_exists(public_path('uploads/documentos_iso/' . $documento->archivo))) {
                unlink(public_path('uploads/documentos_iso/' . $documento->archivo));
            }
            $filename = time() . '_' . $request->file('archivo')->getClientOriginalName();
            $request->file('archivo')->move(public_path('uploads/documentos_iso'), $filename);
            $data['archivo'] = $filename;

            DocumentoIsoVersion::create([
                'documento_iso_id' => $documento->id,
                'archivo' => $filename,
                'comentario' => $request->input('modificaciones', 'Nueva versión'),
                'user_id' => $admin->id,
                'created_at' => now(),
            ]);
        }
        // Después de subir nueva versión, cambia estado a EN REVISIÓN
        $data['estado'] = 'EN REVISIÓN';
        // Limpia campos de aprobación
        $data['aprobado_por'] = null;
        $data['fecha_aprobacion'] = null;

        $documento->update($data);

        DocumentoIsoLog::create([
            'documento_iso_id' => $documento->id,
            'user_id' => $admin->id,
            'accion' => 'Edición',
            'descripcion' => 'Nueva versión enviada para revisión',
            'created_at' => now(),
        ]);
        Session::flash('success', 'Nueva versión enviada para revisión.');
        return redirect()->route('admin.documento_iso.index');
    }

    // ------ 2. JEFE/COORDINADOR AGREGA OBSERVACIÓN ------
    if ($esJefe && $documento->estado === 'EN REVISIÓN' && $request->estado === 'OBSERVADO') {
        $documento->estado = 'OBSERVADO';
        $documento->save();

        DocumentoIsoLog::create([
            'documento_iso_id' => $documento->id,
            'user_id' => $admin->id,
            'accion' => 'Observación',
            'descripcion' => $request->input('observaciones'),
            'created_at' => now(),
        ]);

        Session::flash('success', 'Observaciones enviadas. El documento pasa a estado OBSERVADO.');
        return redirect()->route('admin.documento_iso.index');
    }

    // ------ 3. JEFE/COORDINADOR APRUEBA (pasa a VIGENTE) ------
    if ($esJefe && $documento->estado === 'EN REVISIÓN' && $request->estado === 'VIGENTE') {
        $data['aprobado_por'] = $admin->id;
        $data['fecha_aprobacion'] = now();

        DocumentoIsoLog::create([
            'documento_iso_id' => $documento->id,
            'user_id' => $admin->id,
            'accion' => 'Aprobación',
            'descripcion' => 'Documento aprobado',
            'created_at' => now(),
        ]);

        $documento->update($data);

        Session::flash('success', 'Documento aprobado y marcado como VIGENTE.');
        return redirect()->route('admin.documento_iso.index');
    }

    // Por defecto (no debería llegar aquí, pero por seguridad)
    return back()->withErrors(['error' => 'No tienes permisos para esta acción.'])->withInput();
}




    /**
     * Eliminar un documento
     */
    public function delete($id)
    {
        $documento = DocumentoIso::findOrFail($id);

        if ($documento->archivo && file_exists(public_path('uploads/documentos_iso/' . $documento->archivo))) {
            unlink(public_path('uploads/documentos_iso/' . $documento->archivo));
        }

        $documento->delete();

        // Log de auditoría
        DocumentoIsoLog::create([
            'documento_iso_id' => $id,
            'user_id' => Auth::id() ?? 1,
            'accion' => 'Eliminación',
            'descripcion' => 'Documento eliminado',
            'created_at' => now(),
        ]);

        Session::flash('success', 'Documento ISO eliminado correctamente');
        return back();
    }

    /**
     * Eliminar múltiples documentos
     */
    public function bulkDelete(Request $request)
    {
        $ids = $request->ids;
        if (!empty($ids)) {
            $documentos = DocumentoIso::whereIn('id', $ids)->get();

            foreach ($documentos as $doc) {
                if ($doc->archivo && file_exists(public_path('uploads/documentos_iso/' . $doc->archivo))) {
                    unlink(public_path('uploads/documentos_iso/' . $doc->archivo));
                }
                $doc->delete();

                DocumentoIsoLog::create([
                    'documento_iso_id' => $doc->id,
                    'user_id' => Auth::id() ?? 1,
                    'accion' => 'Eliminación múltiple',
                    'descripcion' => 'Documento eliminado en lote',
                    'created_at' => now(),
                ]);
            }
        }

        Session::flash('success', 'Documentos eliminados correctamente');
        return response()->json(['status' => 'ok']);
    }
}
