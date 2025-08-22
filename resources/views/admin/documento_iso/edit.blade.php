@extends('admin.layout')
@section('content')

<div class="page-header">
  <h4 class="page-title">Editar Documento ISO</h4>
</div>

<div class="row">
  <div class="col-md-12">
    @if ($errors->any())
      <div class="alert alert-danger">
        <ul>@foreach ($errors->all() as $error)<li>{{ $error }}</li>@endforeach</ul>
      </div>
    @endif

    @php
      $rolNombre = strtolower(auth()->user()->role->name ?? '');
      $esJefe = !auth()->user()->role_id || str_contains($rolNombre, 'jefe') || str_contains($rolNombre, 'coordinador');
      $esResponsable = auth()->user()->id == $documento->responsable;
      $estadoActual = $documento->estado;
    @endphp

    <form action="{{ route('admin.documento_iso.update', $documento->id) }}" method="POST" enctype="multipart/form-data">
      @csrf
      @method('PUT')
      <div class="card">
        <div class="card-header">
          <h5 class="card-title">Formulario de Edición</h5>
        </div>
        <div class="card-body">
          <div class="row">

            <!-- ID ISO -->
            <div class="form-group col-md-4">
              <label>ID ISO</label>
              <input type="text" class="form-control" value="{{ $documento->doc_id }}" readonly>
              <input type="hidden" name="doc_id" value="{{ $documento->doc_id }}">
            </div>

            <!-- Estado: select SOLO para jefe en revisión -->
            <div class="form-group col-md-4">
              <label>Estado</label>
              @if($esJefe && $estadoActual === 'EN REVISIÓN')
                <select name="estado" id="estado_select" class="form-control" required>
                  <option value="EN REVISIÓN" {{ old('estado', $estadoActual) == 'EN REVISIÓN' ? 'selected' : '' }}>EN REVISIÓN</option>
                  <option value="VIGENTE" {{ old('estado', $estadoActual) == 'VIGENTE' ? 'selected' : '' }}>VIGENTE</option>
                  <option value="OBSERVADO" {{ old('estado', $estadoActual) == 'OBSERVADO' ? 'selected' : '' }}>OBSERVADO</option>
                </select>
              @else
                <input type="text" class="form-control" value="{{ $estadoActual }}" readonly>
                <input type="hidden" name="estado" value="{{ $estadoActual }}">
              @endif
            </div>

            <!-- Responsable -->
            <div class="form-group col-md-4">
              <label>Responsable</label>
              <input type="text" class="form-control"
                value="{{ $documento->responsableAdmin?->first_name }} {{ $documento->responsableAdmin?->last_name }} ({{ optional($documento->responsableAdmin->role)->name }})"
                readonly>
              <input type="hidden" name="responsable" value="{{ $documento->responsable }}">
            </div>

            <!-- Si vigente: Mostrar aprobador y fecha -->
            @if($estadoActual === 'VIGENTE' && $documento->aprobador)
              <div class="form-group col-md-4">
                <label>Aprobado por</label>
                <input type="text" class="form-control"
                  value="{{ $documento->aprobador->first_name }} {{ $documento->aprobador->last_name }} ({{ optional($documento->aprobador->role)->name }})"
                  readonly>
              </div>
              <div class="form-group col-md-4">
                <label>Fecha de Aprobación</label>
                <input type="text" class="form-control"
                  value="{{ $documento->fecha_aprobacion ? \Carbon\Carbon::parse($documento->fecha_aprobacion)->format('Y-m-d H:i') : '-' }}"
                  readonly>
              </div>
            @endif

            <!-- Campos ocultos -->
            <input type="hidden" name="process_id" value="{{ $documento->process_id }}">
            <input type="hidden" name="doctype_id" value="{{ $documento->doctype_id }}">
            <input type="hidden" name="aprobado_por" value="{{ $documento->aprobado_por }}">
            <input type="hidden" name="anio" value="{{ $documento->anio }}">
            <input type="hidden" name="mes" value="{{ $documento->mes }}">
            <input type="hidden" name="comentarios" value="{{ $documento->comentarios }}">
            <input type="hidden" name="fecha_revision" value="{{ $documento->fecha_revision }}">
            <input type="hidden" name="fecha_aprobacion" value="{{ $documento->fecha_aprobacion }}">

            <!-- Archivo SOLO editable si responsable y estado OBSERVADO -->
            <div class="form-group col-md-4">
              <label>Archivo</label><br>
              @if($documento->archivo)
                <a href="{{ asset('uploads/documentos_iso/'.$documento->archivo) }}" target="_blank" class="btn btn-info btn-sm">
                  <i class="fas fa-file"></i> Ver Actual
                </a>
              @endif
              @if($estadoActual === 'OBSERVADO' && $esResponsable)
                <input type="file" name="archivo" class="form-control mt-2" required>
              @else
                <div class="text-muted">No editable en este estado</div>
              @endif
            </div>

            <!-- Comentario de nueva versión SOLO si OBSERVADO y responsable -->
            @if($estadoActual === 'OBSERVADO' && $esResponsable)
            <div class="form-group col-md-12">
              <label>Comentario de nueva versión</label>
              <textarea name="modificaciones" class="form-control" rows="2" required>{{ old('modificaciones') }}</textarea>
              <small class="text-danger">* Obligatorio. Explica el cambio realizado.</small>
            </div>
            @endif

            <!-- Observaciones SOLO para jefe en revisión y SOLO si selecciona OBSERVADO -->
            @if($esJefe && $estadoActual === 'EN REVISIÓN')
            <div class="form-group col-md-12" id="obs_div" style="display: none;">
              <label>Observaciones del revisor</label>
              <textarea name="observaciones" id="obs_textarea" class="form-control" rows="2">{{ old('observaciones') }}</textarea>
              <small class="text-muted">Obligatorio solo si selecciona "OBSERVADO". Si aprueba, deje en blanco.</small>
            </div>
            @endif

          </div>
        </div>

        <div class="card-footer d-flex justify-content-between">
          <div>
            @if(($estadoActual === 'OBSERVADO' && $esResponsable) || ($esJefe && $estadoActual === 'EN REVISIÓN'))
              <button type="submit" class="btn btn-primary" id="btnGuardar"><i class="fas fa-save"></i> Guardar Cambios</button>
            @else
              <button type="button" class="btn btn-secondary" disabled>No editable en este estado</button>
            @endif
            <a href="{{ route('admin.documento_iso.index') }}" class="btn btn-outline-secondary ml-2">Cancelar</a>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>

{{-- ================== HISTORIAL DE VERSIONES ================== --}}
@if($documento->versiones->count())
<div class="card mt-4">
  <div class="card-header"><h5>Historial de Versiones</h5></div>
  <div class="card-body">
    <table class="table table-bordered table-hover bg-dark text-white">
      <thead>
        <tr>
          <th>Fecha</th>
          <th>Comentario</th>
          <th>Archivo (Ruta)</th>
          <th>Usuario</th>
          <th>Acción</th>
          <th>Ver Archivo</th>
        </tr>
      </thead>
      <tbody>
  @foreach($documento->versiones as $v)
    <tr class="{{ $loop->last && in_array($documento->estado, ['VIGENTE','APROBADO']) ? 'tr-vigente' : '' }}">
      <td><strong>{{ \Carbon\Carbon::parse($v->created_at)->format('Y-m-d H:i') }}</strong></td>
      <td>{{ $v->comentario }}</td>
      <td>
        <code>
          uploads/documentos_iso/{{ $v->archivo }}
        </code>
      </td>
      <td>
        {{ $v->user?->first_name }} {{ $v->user?->last_name }}
        ({{ optional($v->user?->role)->name }}) [ID: {{ $v->user_id }}]
      </td>
      <td>
        @if($loop->last && in_array($documento->estado, ['VIGENTE','APROBADO']))
          <span class="badge badge-success text-white">VIGENTE</span>
        @else
          <span class="badge badge-secondary">Versión</span>
        @endif
      </td>
      <td>
        <a href="{{ asset('uploads/documentos_iso/' . $v->archivo) }}" target="_blank" class="btn btn-info btn-sm">Ver Archivo</a>
      </td>
    </tr>
  @endforeach
</tbody>

    </table>
  </div>
</div>
@endif

{{-- ================== LOGS / ACTIVIDAD ================== --}}
@if($documento->logs->count())
<div class="card mt-4">
  <div class="card-header"><h5>Actividad del Documento (Logs)</h5></div>
  <div class="card-body">
    <table class="table table-bordered table-striped table-dark">
      <thead>
        <tr>
          <th>Fecha</th>
          <th>Acción</th>
          <th>Descripción</th>
          <th>Usuario</th>
        </tr>
      </thead>
      <tbody>
        @foreach($documento->logs as $log)
          <tr>
            <td>
              <strong>{{ \Carbon\Carbon::parse($log->created_at)->format('Y-m-d H:i') }}</strong>
            </td>
            <td>
              @switch($log->accion)
                @case('Observación')
                  <span class="badge badge-warning">{{ $log->accion }}</span>
                  @break
                @case('Aprobación')
                  <span class="badge badge-success">{{ $log->accion }}</span>
                  @break
                @case('Edición')
                  <span class="badge badge-info">{{ $log->accion }}</span>
                  @break
                @case('Creación')
                  <span class="badge badge-primary">{{ $log->accion }}</span>
                  @break
                @default
                  <span class="badge badge-secondary">{{ $log->accion }}</span>
              @endswitch
            </td>
            <td>
              @if($log->accion == 'Observación')
                <span class="text-warning font-weight-bold">{{ $log->descripcion }}</span>
              @else
                {{ $log->descripcion }}
              @endif
            </td>
            <td>
              @php
                $logUser = \App\Models\Admin::find($log->user_id);
              @endphp
              {{ $logUser?->first_name }} {{ $logUser?->last_name }}
              ({{ optional($logUser?->role)->name }}) [ID: {{ $log->user_id }}]
            </td>
          </tr>
        @endforeach
      </tbody>
    </table>
  </div>
</div>
@endif

<!-- JAVASCRIPT para mostrar/ocultar observaciones y evitar guardar sin cambios -->
@if($esJefe && $estadoActual === 'EN REVISIÓN')
<script>
    function toggleObsDiv() {
      var estado = document.getElementById('estado_select').value;
      var obsDiv = document.getElementById('obs_div');
      if (estado === 'OBSERVADO') {
        obsDiv.style.display = '';
        document.getElementById('obs_textarea').setAttribute('required', true);
      } else {
        obsDiv.style.display = 'none';
        document.getElementById('obs_textarea').removeAttribute('required');
      }
    }

    document.addEventListener('DOMContentLoaded', function() {
      var estadoSel = document.getElementById('estado_select');
      var form = estadoSel ? estadoSel.form : null;
      var estadoInicial = '{{ $estadoActual }}';

      if(estadoSel){
        estadoSel.addEventListener('change', toggleObsDiv);
        toggleObsDiv(); // Ejecutar al cargar por si viene precargado
      }

      // Evita guardar si no hay cambio de estado
      if(form){
        form.addEventListener('submit', function(e){
          if(estadoSel && estadoSel.value === estadoInicial){
            e.preventDefault();
            alert('Debes seleccionar un estado diferente para guardar cambios.');
            estadoSel.focus();
          }
        });
      }
    });
  </script>
@endif

@endsection
