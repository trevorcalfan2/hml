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

<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-header d-flex justify-content-between align-items-center">
        <span class="card-title">Lista de Documentos ISO</span>
        <a href="{{ route('admin.documento_iso.create') }}" class="btn btn-primary btn-sm">
          <i class="fas fa-plus"></i> Nuevo Documento
        </a>
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
                    <td>{{ $doc->doc_Id ?? '-' }}</td>
                    <td>{{ $doc->process->area->nombre ?? '-' }}</td>
                    <td>{{ $doc->process->nombre ?? '-' }}</td>
                    <td>{{ $doc->doctype->nombre ?? '-' }}</td>
                    <td>{{ $doc->estado }}</td>
                    <td>{{ $doc->responsable }}</td>
                    <td>
                      @if($doc->archivo)
                        <a href="{{ asset('uploads/documentos_iso/'.$doc->archivo) }}" target="_blank" class="btn btn-info btn-sm">
                          <i class="fas fa-file"></i> Ver
                        </a>
                      @else
                        <span class="text-muted">-</span>
                      @endif
                    </td>
                    <td>{{ $doc->fecha_revision }}</td>
                    <td>{{ $doc->fecha_aprobacion }}</td>
                    <td>{{ $doc->aprobado_por }}</td>
                    <td>
                      <a href="{{ route('admin.documento_iso.edit', $doc->id) }}" class="btn btn-secondary btn-sm" title="Editar">
                        <i class="fas fa-edit"></i>
                      </a>
                      <form action="{{ route('admin.documento_iso.delete', $doc->id) }}" method="POST" style="display:inline;" onsubmit="return confirm('¿Eliminar documento?')">
                        @csrf
                        <button type="submit" class="btn btn-danger btn-sm" title="Eliminar">
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
