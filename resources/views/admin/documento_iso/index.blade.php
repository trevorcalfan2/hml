@extends('admin.layout')

@section('content')
<div class="page-header">
  <h4 class="page-title">Documentos ISO</h4>
  <ul class="breadcrumbs">
    <li class="nav-home">
      <a href="{{ route('admin.dashboard') }}"><i class="flaticon-home"></i></a>
    </li>
    <li class="separator"><i class="flaticon-right-arrow"></i></li>
    <li class="nav-item"><a href="#">Gestión ISO</a></li>
    <li class="separator"><i class="flaticon-right-arrow"></i></li>
    <li class="nav-item"><a href="#">Documentos</a></li>
  </ul>
</div>

@php
    $rolNombre = strtolower(auth()->user()->role->name ?? '');
    $esSuperadmin = !auth()->user()->role_id;
    $puedeCrear = $esSuperadmin ||
        (str_contains($rolNombre, 'asistente') || str_contains($rolNombre, 'analista'));
    $ID_DOCTYPE_REGISTRO = 3; // <-- Cambia aquí si tu id de REGISTRO es diferente
@endphp

<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-header d-flex justify-content-between align-items-center">
        <span class="card-title">Lista de Documentos ISO</span>
        @if($puedeCrear)
          <a href="{{ route('admin.documento_iso.create') }}" class="btn btn-primary btn-sm">
            <i class="fas fa-plus"></i> Nuevo Documento
          </a>
        @endif
      </div>

      <div class="card-body">
        @if($documentos->isEmpty())
          <h5 class="text-center">No se encontraron documentos.</h5>
        @else
          <div class="table-responsive">
            <table class="table table-striped" id="basic-datatables">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>ID ISO</th>
                  <th>Área</th>
                  <th>Proceso</th>
                  <th>Tipo</th>
                  {{-- Nuevas columnas para REGISTRO --}}
                  <th>Frecuencia</th>
                  <th>Año</th>
                  <th>Mes</th>
                  <th>Estado</th>
                  <th>Responsable</th>
                  <th>Archivo</th>
                  <th>Fecha Revisión</th>
                  <th>Fecha Aprobación</th>
                  <th>Aprobado por</th>
                  <th>Acciones</th>
                </tr>
              </thead>
              <tbody>
                @foreach($documentos as $doc)
                  <tr>
                    <td>{{ $doc->id }}</td>
                    <td>{{ $doc->doc_id ?? '-' }}</td>
                    <td>{{ $doc->process->area->nombre ?? '-' }}</td>
                    <td>{{ $doc->process->nombre ?? '-' }}</td>
                    <td>{{ $doc->doctype->nombre ?? '-' }}</td>
                    {{-- Mostrar solo si es tipo REGISTRO --}}
                    <td>
                      @if($doc->doctype_id == $ID_DOCTYPE_REGISTRO)
                        {{ $doc->frecuencia ?? '-' }}
                      @else
                        -
                      @endif
                    </td>
                    <td>
                      @if($doc->doctype_id == $ID_DOCTYPE_REGISTRO)
                        {{ $doc->anio ?? '-' }}
                      @else
                        -
                      @endif
                    </td>
                    <td>
                      @if($doc->doctype_id == $ID_DOCTYPE_REGISTRO)
                        {{ $doc->mes ?? '-' }}
                      @else
                        -
                      @endif
                    </td>
                    {{-- Estado con badge --}}
                    <td>
                      @php $estado = strtoupper($doc->estado); @endphp
                      @if($estado == 'VIGENTE')
                        <span class="badge badge-success">VIGENTE</span>
                      @elseif($estado == 'EN REVISIÓN')
                        <span class="badge badge-primary">EN REVISIÓN</span>
                      @elseif($estado == 'FALTA')
                        <span class="badge badge-warning">FALTA</span>
                      @elseif($estado == 'OBSOLETO')
                        <span class="badge badge-secondary">OBSOLETO</span>
                      @else
                        <span class="badge badge-light">{{ $estado }}</span>
                      @endif
                    </td>
                    <td>
                      {{ $doc->responsableAdmin
                          ? $doc->responsableAdmin->first_name . ' ' . $doc->responsableAdmin->last_name
                          : '-' }}
                    </td>
                    {{-- Ver archivo --}}
                    <td>
                      @if($doc->archivo)
                        <a href="{{ asset('uploads/documentos_iso/'.$doc->archivo) }}" target="_blank" class="btn btn-sm btn-outline-info">
                          <i class="fas fa-file"></i> Ver
                        </a>
                      @else
                        <span class="text-muted">-</span>
                      @endif
                    </td>
                    <td>{{ $doc->fecha_revision ?? '-' }}</td>
                    <td>{{ $doc->fecha_aprobacion ?? '-' }}</td>
                    <td>{{ $doc->aprobador ? $doc->aprobador->first_name . ' ' . $doc->aprobador->last_name : '-' }}</td>
                    {{-- Acciones --}}
                    <td class="d-flex">
                      <a href="{{ route('admin.documento_iso.edit', $doc->id) }}" class="btn btn-sm btn-outline-secondary mr-1" title="Ver / Editar">
                        <i class="fas fa-eye"></i>
                      </a>
                      <form action="{{ route('admin.documento_iso.delete', $doc->id) }}" method="POST" onsubmit="return confirm('¿Está seguro que desea eliminar este documento?')" style="display:inline;">
                        @csrf
                        <button type="submit" class="btn btn-sm btn-outline-danger" title="Eliminar">
                          <i class="fas fa-trash"></i>
                        </button>
                      </form>
                    </td>
                  </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        @endif
      </div>
    </div>
  </div>
</div>
@endsection
