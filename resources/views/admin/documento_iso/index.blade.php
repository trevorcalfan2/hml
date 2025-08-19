@extends('admin.layout')

@section('content')
<div class="page-header">
  <h4 class="page-title">Documentos ISO</h4>
  <ul class="breadcrumbs">
    <li class="nav-home">
      <a href="{{route('admin.dashboard')}}">
        <i class="flaticon-home"></i>
      </a>
    </li>
    <li class="separator">
      <i class="flaticon-right-arrow"></i>
    </li>
    <li class="nav-item">
      <a href="#">Gestión ISO</a>
    </li>
    <li class="separator">
      <i class="flaticon-right-arrow"></i>
    </li>
    <li class="nav-item">
      <a href="#">Documentos</a>
    </li>
  </ul>
</div>

<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-header">
          <div class="row">
              <div class="col-lg-6">
                  <div class="card-title d-inline-block">Lista de Documentos ISO</div>
              </div>
              <div class="col-lg-6 mt-2 mt-lg-0">
                  <a href="{{route('admin.documento_iso.create')}}" class="btn btn-primary float-right btn-sm">
                      <i class="fas fa-plus"></i> Nuevo Documento
                  </a>
                  <button class="btn btn-danger float-right btn-sm mr-2 d-none bulk-delete" 
                          data-href="{{route('admin.documento_iso.bulkDelete')}}">
                      <i class="flaticon-interface-5"></i> Eliminar
                  </button>
              </div>
          </div>
      </div>
      <div class="card-body">
        <div class="row">
          <div class="col-lg-12">
            @if (count($documentos) == 0)
              <h3 class="text-center">NO SE ENCONTRARON DOCUMENTOS</h3>
            @else
              <div class="table-responsive">
                <table class="table table-striped mt-3" id="basic-datatables">
                  <thead>
                    <tr>
                      <th><input type="checkbox" class="bulk-check" data-val="all"></th>
                      <th>Tipo</th>
                      <th>Estado</th>
                      <th>Responsable</th>
                      <th>Proceso</th>
                      <th>Archivo</th>
                      <th>Fecha Revisión</th>
                      <th>Fecha Aprobación</th>
                      <th>Aprobado por</th>
                      <th>Acciones</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach ($documentos as $doc)
                      <tr>
                        <td><input type="checkbox" class="bulk-check" data-val="{{$doc->id}}"></td>
                        <td>{{ $doc->tipo_documento }}</td>
                        <td>{{ $doc->estado }}</td>
                        <td>{{ $doc->responsable }}</td>
                        <td>{{ $doc->proceso ? $doc->proceso->nombre : '-' }}</td>
                        <td>
                          @if($doc->archivo)
                            <a href="{{ asset('uploads/documentos_iso/'.$doc->archivo) }}" target="_blank" class="btn btn-info btn-sm">
                              <i class="fas fa-file"></i> Ver
                            </a>
                          @endif
                        </td>
                        <td>{{ $doc->fecha_revision }}</td>
                        <td>{{ $doc->fecha_aprobacion }}</td>
                        <td>{{ $doc->aprobado_por }}</td>
                        <td width="15%">
                          <a class="btn btn-secondary btn-sm p-2" href="{{route('admin.documento_iso.edit', $doc->id)}}">
                            <i class="fas fa-edit"></i>
                          </a>
                          <form class="deleteform d-inline-block" action="{{route('admin.documento_iso.delete', $doc->id)}}" method="post">
                            @csrf
                            <button type="submit" class="btn btn-danger btn-sm deletebtn p-2">
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
  </div>
</div>
@endsection
