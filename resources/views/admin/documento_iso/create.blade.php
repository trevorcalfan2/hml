@extends('admin.layout')

@section('content')




<div class="page-header">
  <h4 class="page-title">Nuevo Documento ISO</h4>
  <ul class="breadcrumbs">
    <li class="nav-home">
      <a href="{{ route('admin.documento_iso.index') }}"><i class="flaticon-home"></i></a>
    </li>
    <li class="separator"><i class="flaticon-right-arrow"></i></li>
    <li class="nav-item"><a href="#">Gestión ISO</a></li>
    <li class="separator"><i class="flaticon-right-arrow"></i></li>
    <li class="nav-item"><a href="#">Nuevo Documento</a></li>
  </ul>
</div>

<div class="row">
  <div class="col-md-12">
    {{-- Errores de validación --}}
    @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
          @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
          @endforeach
        </ul>
      </div>
    @endif

    <form action="{{ route('admin.documento_iso.store') }}" method="POST" enctype="multipart/form-data">
      @csrf
      <div class="card">
        <div class="card-header">
          <div class="card-title">Registrar Documento ISO</div>
        </div>

        <div class="card-body row">

          {{-- ID Referencia ISO (doc_Id) --}}
          <div class="form-group col-md-6">
            <label>ID referencia ISO (doc_Id)</label>
            <input type="text" name="doc_Id" class="form-control" value="{{ old('doc_Id') }}">
          </div>

          {{-- Tipo de Documento --}}
          <div class="form-group col-md-6">
            <label>Tipo de Documento</label>
            <select name="doctype_id" id="doctype_id" class="form-control" required>
              <option value="" disabled selected>Seleccione un tipo</option>
              @foreach($doctypes as $doctype)
                <option value="{{ $doctype->doctype_id }}">{{ $doctype->nombre }}</option>
              @endforeach
            </select>
          </div>

          {{-- Año/Mes si es Políticas --}}
          <div id="politicas_extra" class="col-md-12" style="display:none;">
            <div class="form-group col-md-6">
              <label>Año</label>
              <input type="text" name="anio" class="form-control" value="{{ old('anio') }}">
            </div>
            <div class="form-group col-md-6">
              <label>Mes</label>
              <input type="text" name="mes" class="form-control" value="{{ old('mes') }}">
            </div>
          </div>

          {{-- Estado --}}
          @php
  // Si es superadmin no tiene rol_id (puede todo)
  $isSuperAdmin = empty($admin->role_id);

  // Verifica si es jefe o coordinador (rolActual puede ser null si es superadmin)
  $rolNombre = $rolActual ? strtolower($rolActual->name) : '';
  $isJefe = (strpos($rolNombre, 'coordinador') !== false || strpos($rolNombre, 'jefe') !== false);
@endphp

<div class="form-group col-md-6">
  <label>Estado</label>
  <select name="estado" class="form-control" required>
    <option value="" disabled {{ old('estado') ? '' : 'selected' }}>Seleccione estado</option>
    @if ($isSuperAdmin || $isJefe)
        <option value="VIGENTE" {{ old('estado') == 'VIGENTE' ? 'selected' : '' }}>VIGENTE</option>
        <option value="EN REVISIÓN" {{ old('estado') == 'EN REVISIÓN' ? 'selected' : '' }}>EN REVISIÓN</option>
        <option value="FALTA" {{ old('estado') == 'FALTA' ? 'selected' : '' }}>FALTA</option>
        <option value="OBSOLETO" {{ old('estado') == 'OBSOLETO' ? 'selected' : '' }}>OBSOLETO</option>
    @else
        <option value="EN REVISIÓN" {{ old('estado') == 'EN REVISIÓN' ? 'selected' : '' }}>EN REVISIÓN</option>
    @endif
  </select>
</div>






         {{-- Responsable (combo dinámico) --}}
        <div class="form-group col-md-6">
          <label>Responsable</label>
          <select name="responsable" class="form-control" id="responsable_id" required>
            <option value="" disabled selected>Seleccione responsable</option>
          </select>
        </div>


          {{-- Área --}}
          <div class="form-group col-md-6">
            <label>Área</label>
            <select name="area_id" class="form-control" required id="area_id">
              <option value="" disabled selected>Seleccione un área</option>
              @foreach($areas as $area)
                <option value="{{ $area->area_id }}">{{ $area->nombre }}</option>
              @endforeach
            </select>
          </div>

          {{-- Proceso: carga dinámica --}}
          <div class="form-group col-md-6">
            <label>Proceso</label>
            <select name="process_id" class="form-control" required id="process_id">
              <option value="" disabled selected>Seleccione un proceso</option>
              {{-- Las opciones se cargan por JS --}}
            </select>
          </div>

          {{-- Archivo --}}
          <div class="form-group col-md-6">
            <label>Archivo</label>
            <input type="file" name="archivo" class="form-control" accept=".pdf,.doc,.docx" required>
          </div>

          {{-- Fecha revisión (desactivada) --}}
          <div class="form-group col-md-6">
            <label>Fecha Revisión</label>
            <input type="text" name="fecha_revision" class="form-control" value="" disabled>
          </div>

          {{-- Fecha Aprobación --}}
          <div class="form-group col-md-6">
            <label>Fecha Aprobación</label>
            <input type="text" name="fecha_aprobacion" id="fecha_aprobacion" class="form-control" readonly style="background:#fff;">
          </div>

         <div class="form-group col-md-6">
          <label>Aprobado por</label>
          <select name="aprobado_por" class="form-control" id="aprobado_por_id" required>
            <option value="" disabled selected>Seleccione aprobador</option>
          </select>
        </div>



          {{-- Modificaciones (desactivado) --}}
          <div class="form-group col-md-12">
            <label>Modificaciones</label>
            <textarea name="modificaciones" class="form-control" rows="3" disabled></textarea>
          </div>

          {{-- Historial de Versiones (readonly) --}}
          <div class="form-group col-md-12">
            <label>Historial de Versiones</label>
            <textarea name="historial_versiones" class="form-control" rows="3" readonly></textarea>
          </div>

          {{-- Comentarios --}}
          <div class="form-group col-md-6">
            <label>Comentarios</label>
            <textarea name="comentarios" class="form-control" rows="2">{{ old('comentarios') }}</textarea>
          </div>

          {{-- Actividad --}}
          <div class="form-group col-md-6">
            <label>Actividad</label>
            <div style="background: #f5f5f5; padding: 8px; border-radius: 4px; min-height: 40px;">
              No hay actividad registrada.
            </div>
          </div>

        </div>

        <div class="card-footer text-right">
          <button type="submit" class="btn btn-success">Guardar</button>
          <a href="{{ route('admin.documento_iso.index') }}" class="btn btn-secondary">Cancelar</a>
        </div>
      </div>
    </form>
  </div>
</div>
@endsection




