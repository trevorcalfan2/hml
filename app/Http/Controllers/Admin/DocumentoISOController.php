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
use Illuminate\Support\Facades\Auth; // Para user_id (si usas Auth::user())

class DocumentoIsoController extends Controller
{
    /**
     * Listado de documentos ISO
     */
    public function index()
    {
$admin = auth()->user(); // O Auth::guard('admin')->user();

    // Si el usuario no tiene roles, no ve ningún documento
    $documentos = collect();
    if ($admin && $admin->roles->count()) {
        $documentos = DocumentoIso::whereHas('roles', function($q) use ($admin) {
                $q->whereIn('roles.id', $admin->roles->pluck('id'));
            })
            ->with(['process.area', 'doctype', 'roles'])
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
        $data['areas'] = Area::all();
        $data['procesos'] = Process::all();
        $data['doctypes'] = Doctype::all();
        $data['roles'] = \App\Models\Role::all();

        return view('admin.documento_iso.create', $data);
    }

    /**
     * Guardar nuevo documento
     */
    public function store(Request $request)
    {
        $rules = [
            'estado'           => 'required|string|max:255',
            'responsable'      => 'required|string|max:255',
            'process_id'       => 'required|exists:process,process_id',
            'doctype_id'       => 'required|exists:doctype,doctype_id',
            'archivo'          => 'required|file|mimes:pdf,doc,docx',
            'fecha_revision'   => 'nullable|date',
            'fecha_aprobacion' => 'nullable|date',
            'anio'             => 'nullable|integer',
            'mes'              => 'nullable|string',
            'roles'            => 'nullable|array', // Nuevo: roles asignados
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $data = $request->except('roles');
        // Subida de archivo y creación de documento
        if ($request->hasFile('archivo')) {
            $filename = time() . '_' . $request->file('archivo')->getClientOriginalName();
            $request->file('archivo')->move(public_path('uploads/documentos_iso'), $filename);
            $data['archivo'] = $filename;
        }

        $documento = DocumentoIso::create($data);

        // Guardar versión inicial
        if (!empty($data['archivo'])) {
            DocumentoIsoVersion::create([
                'documento_iso_id' => $documento->id,
                'archivo' => $data['archivo'],
                'comentario' => 'Versión inicial',
                'user_id' => Auth::id() ?? 1, // Usa el ID real si tienes auth
            ]);
        }

        // Guardar roles asociados
        if ($request->filled('roles')) {
            $documento->roles()->sync($request->roles);
        }

        // Log de auditoría
        DocumentoIsoLog::create([
            'documento_iso_id' => $documento->id,
            'user_id' => Auth::id() ?? 1,
            'accion' => 'Creación',
            'descripcion' => 'Documento creado',
        ]);

        Session::flash('success', 'Documento ISO creado correctamente');
        return redirect()->route('admin.documento_iso.index');
    }

    /**
     * Formulario editar
     */
    public function edit($id)
    {
        $documento = DocumentoIso::findOrFail($id);
        $areas = Area::all();
        $procesos = Process::all();
        $doctypes = Doctype::all();
        $roles = \App\Models\Role::all();

        return view('admin.documento_iso.edit', compact('documento', 'areas', 'procesos', 'doctypes', 'roles'));
    }

    /**
     * Actualizar documento
     */
    public function update(Request $request, $id)
    {
        $documento = DocumentoIso::findOrFail($id);

        $rules = [
            'estado'           => 'required|string|max:255',
            'responsable'      => 'required|string|max:255',
            'process_id'       => 'required|exists:process,process_id',
            'doctype_id'       => 'required|exists:doctype,doctype_id',
            'archivo'          => 'nullable|file|mimes:pdf,doc,docx',
            'fecha_revision'   => 'nullable|date',
            'fecha_aprobacion' => 'nullable|date',
            'anio'             => 'nullable|integer',
            'mes'              => 'nullable|string',
            'roles'            => 'nullable|array', // Nuevo: roles asignados
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $data = $request->except('roles');

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
            ]);
        }

        $documento->update($data);

        // Actualizar roles asociados
        if ($request->filled('roles')) {
            $documento->roles()->sync($request->roles);
        }

        // Log de auditoría
        DocumentoIsoLog::create([
            'documento_iso_id' => $documento->id,
            'user_id' => Auth::id() ?? 1,
            'accion' => 'Edición',
            'descripcion' => 'Documento actualizado',
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
                ]);
            }
        }

        Session::flash('success', 'Documentos eliminados correctamente');
        return response()->json(['status' => 'ok']);
    }
}
