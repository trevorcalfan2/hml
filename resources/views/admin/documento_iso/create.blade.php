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

          {{-- ✅ Select dinámico de Doctype --}}
          <div class="form-group col-md-6">
            <label>Tipo de Documento</label>
            <select name="doctype_id" class="form-control" required>
              <option value="" disabled selected>Seleccione un tipo</option>
              @foreach($doctypes as $doctype)
                <option value="{{ $doctype->doctype_id }}" {{ old('doctype_id') == $doctype->doctype_id ? 'selected' : '' }}>
                  {{ $doctype->nombre }}
                </option>
              @endforeach
            </select>
          </div>

          {{-- Estado --}}
          <div class="form-group col-md-6">
            <label>Estado</label>
            <input type="text" name="estado" class="form-control" value="{{ old('estado') }}" required>
          </div>

          {{-- Responsable --}}
          <div class="form-group col-md-6">
            <label>Responsable</label>
            <input type="text" name="responsable" class="form-control" value="{{ old('responsable') }}" required>
          </div>

          {{-- ✅ Select dinámico de Proceso --}}
          <div class="form-group col-md-6">
            <label>Proceso</label>
            <select name="process_id" class="form-control" required>
              <option value="" disabled selected>Seleccione un proceso</option>
              @foreach($procesos as $proceso)
                <option value="{{ $proceso->process_id }}" {{ old('process_id') == $proceso->process_id ? 'selected' : '' }}>
                  {{ $proceso->nombre }} ({{ $proceso->area->nombre ?? 'Sin área' }})
                </option>
              @endforeach
            </select>
          </div>

          {{-- Archivo --}}
          <div class="form-group col-md-6">
            <label>Archivo</label>
            <input type="file" name="archivo" class="form-control" accept=".pdf,.doc,.docx" required>
          </div>

          {{-- Fechas --}}
          <div class="form-group col-md-6">
            <label>Fecha Revisión</label>
            <input type="text" name="fecha_revision" class="form-control" value="{{ old('fecha_revision') }}">
          </div>

          <div class="form-group col-md-6">
            <label>Fecha Aprobación</label>
            <input type="date" name="fecha_aprobacion" class="form-control" value="{{ old('fecha_aprobacion') }}">
          </div>

          {{-- Aprobador --}}
          <div class="form-group col-md-6">
            <label>Aprobado por</label>
            <input type="text" name="aprobado_por" class="form-control" value="{{ old('aprobado_por') }}">
          </div>

          {{-- Textareas --}}
          <div class="form-group col-md-12">
            <label>Modificaciones</label>
            <textarea name="modificaciones" class="form-control" rows="3">{{ old('modificaciones') }}</textarea>
          </div>

          <div class="form-group col-md-12">
            <label>Historial de Versiones</label>
            <textarea name="historial_versiones" class="form-control" rows="3">{{ old('historial_versiones') }}</textarea>
          </div>

          {{-- Campos especiales SOLO para registros --}}
          <div class="form-group col-md-4 registro-only">
            <label>Año</label>
            <input type="text" name="anio" class="form-control" value="{{ old('anio') }}">
          </div>
          <div class="form-group col-md-4 registro-only">
            <label>Mes</label>
            <input type="text" name="mes" class="form-control" value="{{ old('mes') }}">
          </div>
          <div class="form-group col-md-4 registro-only">
            <label>Registro</label>
            <input type="text" name="registro" class="form-control" value="{{ old('registro') }}">
          </div>

          {{-- Comentarios --}}
          <div class="form-group col-md-6">
            <label>Comentarios</label>
            <textarea name="comentarios" class="form-control" rows="2">{{ old('comentarios') }}</textarea>
          </div>

          {{-- Actividad --}}
          <div class="form-group col-md-6">
            <label>Actividad</label>
            <textarea name="actividad" class="form-control" rows="2">{{ old('actividad') }}</textarea>
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

@push('scripts')
<!-- Flatpickr JS & Plugin -->
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/plugins/monthSelect/index.js"></script>

<script>
  document.addEventListener('DOMContentLoaded', function () {
    flatpickr("input[name='fecha_revision']", {
      dateFormat: "Y-m-d",
      allowInput: true,
      clickOpens: true
    });

    flatpickr("input[name='anio']", {
      dateFormat: "Y",
      allowInput: true,
      clickOpens: true
    });

    flatpickr("input[name='mes']", {
      plugins: [
        new monthSelectPlugin({
          shorthand: true,
          dateFormat: "F",
          altFormat: "F Y",
          theme: "light"
        })
      ],
      allowInput: true,
      clickOpens: true
    });
  });
</script>
@endpush

