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
            // Admin sin rol: ve todos los documentos
            $documentos = DocumentoIso::with(['process.area', 'doctype'])
                ->orderBy('id', 'DESC')
                ->get();
        } else {
            // Admin con rol: ve solo docs de áreas asociadas a su rol
            $roleId = $admin->role_id;
            $documentos = DocumentoIso::whereHas('process.area.roles', function($q) use ($roleId) {
                    $q->where('roles.id', $roleId);
                })
                ->with(['process.area', 'doctype'])
                ->orderBy('id', 'DESC')
                ->get();
        }

        return view('admin.documento_iso.index', compact('documentos'));
    }

    /**
     * Formulario crear
     */
public function create()
{
    $admin = Auth::guard('admin')->user();

    // Obtener rol actual del admin
    $rolActual = null;
    if ($admin->role_id) {
        $rolActual = \App\Models\Role::find($admin->role_id);
    }

    // Listar aprobadores si es superadmin o coordinador/jefe, si no, vacío (opcional según tu lógica)
    if (!$admin->role_id) {
        $aprobadores = \App\Models\Admin::with('role.areas')->get();
    } else {
        $aprobadores = collect([$admin->load('role.areas')]);
    }

    $data['areas'] = Area::all();
    $data['procesos'] = Process::with('area')->get();
    $data['doctypes'] = Doctype::all();
    $data['aprobadores'] = $aprobadores;
    $data['admin'] = $admin;
    $data['rolActual'] = $rolActual;

    return view('admin.documento_iso.create', $data);
}


public function responsablesPorArea($areaId)
{
    // Obtén el área
    $area = \App\Models\Area::find($areaId);
    if (!$area) {
        return response()->json([]);
    }

    // Busca roles que contengan 'coordinador' o 'jefe' y el nombre del área
    $roles = \App\Models\Role::where(function($q) use ($area) {
        $q->where('name', 'like', '%coordinador%')
          ->orWhere('name', 'like', '%jefe%');
    })
    ->where('name', 'like', '%' . $area->nombre . '%')
    ->pluck('id');

    // Busca admins que tengan uno de esos roles
    $responsables = \App\Models\Admin::whereIn('role_id', $roles)->get(['id', 'first_name', 'last_name', 'role_id']);

    // Añade el nombre del rol para mostrar en el combo
    foreach ($responsables as $admin) {
        $admin->role_name = optional($admin->role)->name;
    }

    return response()->json($responsables);
}




public function aprobadoresPorArea($areaId)
{
    // Buscar todos los admins con rol de 'jefe' o 'coordinador' Y que pertenezcan al área seleccionada
    $aprobadores = \App\Models\Admin::whereHas('role', function($q) use ($areaId) {
        $q->where(function($r) {
            $r->where('name', 'like', '%coordinador%')
              ->orWhere('name', 'like', '%jefe%');
        })
        ->whereHas('areas', function($a) use ($areaId) {
            $a->where('area.area_id', $areaId);
        });
    })
    ->get(['id', 'first_name', 'last_name', 'role_id']);

    // Adjunta el nombre del rol al resultado
    $aprobadores->transform(function($item) {
        $item->role_name = $item->role ? $item->role->name : '';
        return $item;
    });

    return response()->json($aprobadores);
}























    /**
     * Guardar nuevo documento
     */
  public function store(Request $request)
{
    $admin = Auth::guard('admin')->user();
    $rol = null;
    if ($admin->role_id) {
        $rol = \App\Models\Role::find($admin->role_id);
    }

    $rolNombre = $rol ? strtolower($rol->name) : '';
    $isJefe = (strpos($rolNombre, 'coordinador') !== false || strpos($rolNombre, 'jefe') !== false);
    $isSuperAdmin = empty($admin->role_id);

    $rules = [
        'doc_Id' => 'nullable|string|max:255',
        'estado' => 'required|string|max:255',
        'responsable' => 'required|string|max:255',
        'process_id' => 'required|exists:process,process_id',
        'doctype_id' => 'required|exists:doctype,doctype_id',
        'archivo' => 'required|file|mimes:pdf,doc,docx',
        'fecha_aprobacion' => 'nullable|date',
        'aprobado_por' => 'required|string|max:255',
        'anio' => 'nullable|integer',
        'mes' => 'nullable|string|max:25',
        'comentarios' => 'nullable|string|max:1000',
    ];

    $validator = Validator::make($request->all(), $rules);

    if ($validator->fails()) {
        return back()->withErrors($validator)->withInput();
    }

    $data = $request->all();

    // Si NO es superadmin ni jefe/coordinador, fuerza el estado a EN REVISIÓN
    if (!$isSuperAdmin && !$isJefe) {
        $data['estado'] = 'EN REVISIÓN';
    }

    // Subida de archivo
    if ($request->hasFile('archivo')) {
        $filename = time() . '_' . $request->file('archivo')->getClientOriginalName();
        $request->file('archivo')->move(public_path('uploads/documentos_iso'), $filename);
        $data['archivo'] = $filename;
    }

    // Inicializar campos de historial y modificaciones
    $data['historial_versiones'] = '';
    $data['modificaciones'] = '';
    $data['fecha_revision'] = null;

    $documento = DocumentoIso::create($data);

    // Guardar versión inicial
    if (!empty($data['archivo'])) {
        DocumentoIsoVersion::create([
            'documento_iso_id' => $documento->id,
            'archivo' => $data['archivo'],
            'comentario' => $request->input('comentarios', 'Versión inicial'),
            'user_id' => Auth::id() ?? 1,
            'created_at' => $data['fecha_aprobacion'] ?? now(),
        ]);
    }

    // Log de auditoría
    DocumentoIsoLog::create([
        'documento_iso_id' => $documento->id,
        'user_id' => Auth::id() ?? 1,
        'accion' => 'Creación',
        'descripcion' => 'Documento creado',
        'created_at' => now(),
    ]);

    Session::flash('success', 'Documento ISO creado correctamente');
    return redirect()->route('admin.documento_iso.index');
}

    /**
     * Formulario editar
     */
    public function edit($id)
    {
        $documento = DocumentoIso::with(['versiones', 'logs'])->findOrFail($id);
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

        return view('admin.documento_iso.edit', compact('documento', 'areas', 'procesos', 'doctypes', 'aprobadores'));
    }

    /**
     * Actualizar documento
     */
    public function update(Request $request, $id)
    {
        $documento = DocumentoIso::findOrFail($id);

        $rules = [
            'doc_Id'           => 'nullable|string|max:255',
            'estado'           => 'required|string|max:255',
            'responsable'      => 'required|string|max:255',
            'process_id'       => 'required|exists:process,process_id',
            'doctype_id'       => 'required|exists:doctype,doctype_id',
            'archivo'          => 'nullable|file|mimes:pdf,doc,docx',
            'fecha_revision'   => 'nullable|date',
            'fecha_aprobacion' => 'nullable|date',
            'aprobado_por'     => 'required|string|max:255',
            'anio'             => 'nullable|integer',
            'mes'              => 'nullable|string',
            'comentarios'      => 'nullable|string|max:1000',
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $data = $request->all();

        // Actualización de archivo y registro de nueva versión
        if ($request->hasFile('archivo')) {
            if ($documento->archivo && file_exists(public_path('uploads/documentos_iso/' . $documento->archivo))) {
                unlink(public_path('uploads/documentos_iso/' . $documento->archivo));
            }
            $filename = time() . '_' . $request->file('archivo')->getClientOriginalName();
            $request->file('archivo')->move(public_path('uploads/documentos_iso'), $filename);
            $data['archivo'] = $filename;

            // Guardar nueva versión
            DocumentoIsoVersion::create([
                'documento_iso_id' => $documento->id,
                'archivo' => $filename,
                'comentario' => $request->input('modificaciones', 'Nueva versión'),
                'user_id' => Auth::id() ?? 1,
                'created_at' => $request->input('fecha_aprobacion', now()),
            ]);
        }

        $documento->update($data);

        // Log de auditoría
        DocumentoIsoLog::create([
            'documento_iso_id' => $documento->id,
            'user_id' => Auth::id() ?? 1,
            'accion' => 'Edición',
            'descripcion' => 'Documento actualizado',
            'created_at' => now(),
        ]);

        Session::flash('success', 'Documento ISO actualizado correctamente');
        return redirect()->route('admin.documento_iso.index');
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
