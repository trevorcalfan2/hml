@extends('admin.layout')

@section('content')
<div class="page-header">
  <h4 class="page-title">Editar Documento ISO</h4>
  <ul class="breadcrumbs">
    <li class="nav-home"><a href="{{route('admin.dashboard')}}"><i class="flaticon-home"></i></a></li>
    <li class="separator"><i class="flaticon-right-arrow"></i></li>
    <li class="nav-item"><a href="#">Gestión ISO</a></li>
    <li class="separator"><i class="flaticon-right-arrow"></i></li>
    <li class="nav-item"><a href="#">Editar Documento</a></li>
  </ul>
</div>

<div class="row">
  <div class="col-md-12">
    <form action="{{route('admin.documento_iso.update', $documento->id)}}" method="POST" enctype="multipart/form-data">
      @csrf
      @method('PUT')
      <div class="card">
        <div class="card-header"><div class="card-title">Actualizar Documento ISO</div></div>
        <div class="card-body row">

          <div class="form-group col-md-6">
            <label>Tipo de Documento</label>
            <select name="tipo_documento" class="form-control" required>
              <option value="registro" {{$documento->tipo_documento == 'registro' ? 'selected' : ''}}>Registro</option>
              <option value="procedimiento" {{$documento->tipo_documento == 'procedimiento' ? 'selected' : ''}}>Procedimiento</option>
            </select>
          </div>

          <div class="form-group col-md-6">
            <label>Estado</label>
            <input type="text" name="estado" class="form-control" value="{{$documento->estado}}" required>
          </div>

          <div class="form-group col-md-6">
            <label>Responsable</label>
            <input type="text" name="responsable" class="form-control" value="{{$documento->responsable}}" required>
          </div>

          <div class="form-group col-md-6">
            <label>Proceso</label>
            <select name="proceso_id" class="form-control" required>
              @foreach($procesos as $proceso)
                <option value="{{$proceso->id}}" {{$documento->proceso_id == $proceso->id ? 'selected' : ''}}>
                  {{$proceso->nombre}} ({{$proceso->area->nombre}})
                </option>
              @endforeach
            </select>
          </div>

          <div class="form-group col-md-6">
            <label>Roles con acceso</label>
            <select name="roles[]" class="form-control" multiple>
              @foreach($roles as $role)
                <option value="{{$role->id}}" {{ in_array($role->id, $documento->roles->pluck('id')->toArray()) ? 'selected' : '' }}>
                  {{$role->name}}
                </option>
              @endforeach
            </select>
          </div>

          <div class="form-group col-md-6">
            <label>Archivo</label><br>
            @if($documento->archivo)
              <a href="{{ asset('uploads/documentos_iso/'.$documento->archivo) }}" target="_blank" class="btn btn-info btn-sm mb-2">
                <i class="fas fa-file"></i> Ver Actual
              </a>
            @endif
            <input type="file" name="archivo" class="form-control" accept=".pdf,.doc,.docx">
          </div>

          <div class="form-group col-md-6">
            <label>Fecha Revisión</label>
            <input type="date" name="fecha_revision" class="form-control" value="{{$documento->fecha_revision}}">
          </div>

          <div class="form-group col-md-6">
            <label>Fecha Aprobación</label>
            <input type="date" name="fecha_aprobacion" class="form-control" value="{{$documento->fecha_aprobacion}}">
          </div>

          <div class="form-group col-md-6">
            <label>Aprobado por</label>
            <input type="text" name="aprobado_por" class="form-control" value="{{$documento->aprobado_por}}">
          </div>

          <div class="form-group col-md-12">
            <label>Modificaciones</label>
            <textarea name="modificaciones" class="form-control" rows="3">{{$documento->modificaciones}}</textarea>
          </div>

          <div class="form-group col-md-12">
            <label>Historial de Versiones</label>
            <textarea name="historial_versiones" class="form-control" rows="3">{{$documento->historial_versiones}}</textarea>
          </div>

          {{-- SOLO si es registro --}}
          @if($documento->tipo_documento == 'registro')
          <div class="form-group col-md-4">
            <label>Año</label>
            <input type="number" name="anio" class="form-control" value="{{$documento->anio}}">
          </div>
          <div class="form-group col-md-4">
            <label>Mes</label>
            <input type="text" name="mes" class="form-control" value="{{$documento->mes}}">
          </div>
          <div class="form-group col-md-4">
            <label>Registro</label>
            <input type="text" name="registro" class="form-control" value="{{$documento->registro}}">
          </div>
          @endif

          <div class="form-group col-md-6">
            <label>Comentarios</label>
            <textarea name="comentarios" class="form-control" rows="2">{{$documento->comentarios}}</textarea>
          </div>

          <div class="form-group col-md-6">
            <label>Actividad</label>
            <textarea name="actividad" class="form-control" rows="2">{{$documento->actividad}}</textarea>
          </div>

        </div>
        <div class="card-footer text-right">
          <button type="submit" class="btn btn-success">Actualizar</button>
          <a href="{{route('admin.documento_iso.index')}}" class="btn btn-secondary">Cancelar</a>
        </div>
      </div>
    </form>
  </div>
</div>
@endsection
