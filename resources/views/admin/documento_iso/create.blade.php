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
            <input type="text" name="doc_id" class="form-control" value="{{ old('doc_id') }}">
          </div>

          {{-- Tipo de Documento --}}
          <div class="form-group col-md-6">
            <label>Tipo de Documento</label>
            <select name="doctype_id" id="doctype_id" class="form-control" required>
              <option value="" disabled selected>Seleccione un tipo</option>
              @foreach($doctypes as $doctype)
                <option value="{{ $doctype->doctype_id }}"
                  {{ old('doctype_id') == $doctype->doctype_id ? 'selected' : '' }}>
                  {{ $doctype->nombre }}
                </option>
              @endforeach
            </select>
          </div>

          {{-- Año/Mes/Frecuencia si es registro --}}
          <div id="registro_extra" class="col-md-12" style="display:none;">
            <div class="row">
              <div class="form-group col-md-4">
                <label>Año</label>
                <input type="number" name="anio" id="anio" class="form-control" value="{{ old('anio') }}">
              </div>
              <div class="form-group col-md-4">
                <label>Mes</label>
                <select name="mes" id="mes" class="form-control">
                  <option value="" disabled selected>Seleccione un mes</option>
                  @foreach([
                    'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
                    'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'
                  ] as $mes)
                    <option value="{{ $mes }}" {{ old('mes') == $mes ? 'selected' : '' }}>{{ $mes }}</option>
                  @endforeach
                </select>
              </div>
              <div class="form-group col-md-4">
                <label>Frecuencia</label>
                <select name="frecuencia" id="frecuencia" class="form-control">
                  <option value="" disabled selected>Seleccione frecuencia</option>
                  <option value="Mensual" {{ old('frecuencia') == 'Mensual' ? 'selected' : '' }}>Mensual</option>
                  <option value="Trimestral" {{ old('frecuencia') == 'Trimestral' ? 'selected' : '' }}>Trimestral</option>
                  <option value="Semestral" {{ old('frecuencia') == 'Semestral' ? 'selected' : '' }}>Semestral</option>
                  <option value="Anual" {{ old('frecuencia') == 'Anual' ? 'selected' : '' }}>Anual</option>
                </select>
              </div>
            </div>
          </div>

          {{-- Estado --}}
          @php
            $isSuperAdmin = empty($admin->role_id);
            $rolNombre = strtolower($admin->role->name ?? '');
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

          {{-- Responsable --}}
          <div class="form-group col-md-4">
            <label>Responsable</label>
            <input type="text" class="form-control"
              value="{{ $admin->first_name }} {{ $admin->last_name }} ({{ $admin->role->name }})" readonly>
            <input type="hidden" name="responsable" value="{{ $admin->id }}">
          </div>

          {{-- Área --}}
          <div class="form-group col-md-6">
            <label>Área</label>
            <select name="area_id" class="form-control" required id="area_id">
              <option value="" disabled selected>Seleccione un área</option>
              @foreach($areas as $area)
                <option value="{{ $area->area_id }}" data-nombre="{{ $area->nombre }}">{{ $area->nombre }}</option>
              @endforeach
            </select>
          </div>

          {{-- Proceso --}}
          <div class="form-group col-md-6">
            <label>Proceso</label>
            <select name="process_id" class="form-control" required id="process_id">
              <option value="" disabled selected>Seleccione un proceso</option>
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

<script>
 
  const DOCTYPE_REGISTRO_ID = 3; // 

  function toggleRegistroExtra() {
    var doctypeId = document.getElementById('doctype_id').value;
    var extraDiv = document.getElementById('registro_extra');
    var anio = document.getElementById('anio');
    var mes = document.getElementById('mes');
    var frecuencia = document.getElementById('frecuencia');

    if (parseInt(doctypeId) === DOCTYPE_REGISTRO_ID) {
      extraDiv.style.display = '';
      anio.setAttribute('required', true);
      mes.setAttribute('required', true);
      frecuencia.setAttribute('required', true);
    } else {
      extraDiv.style.display = 'none';
      anio.removeAttribute('required');
      mes.removeAttribute('required');
      frecuencia.removeAttribute('required');
    }
  }

  document.addEventListener('DOMContentLoaded', function () {
    var doctypeSel = document.getElementById('doctype_id');
    doctypeSel.addEventListener('change', toggleRegistroExtra);
    toggleRegistroExtra(); // inicializa en load por si hay old
  });
</script>

@endsection
