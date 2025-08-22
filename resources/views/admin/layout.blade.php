<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
	<title>ISO MANAGEMENT ADUAMERICA</title>
	<link rel="icon" href="{{asset('assets/front/img/'.$bs->favicon)}}">
	@includeif('admin.partials.styles')
    @php
        $selLang = App\Models\Language::where('code', request()->input('language'))->first();
    @endphp
    @if (!empty($selLang) && $selLang->rtl == 1)
    <style>
    #editModal form input,
    #editModal form textarea,
    #editModal form select {
        direction: rtl;
    }
    #editModal form .note-editor.note-frame .note-editing-area .note-editable {
        direction: rtl;
        text-align: right;
    }
    </style>






    @endif
    @yield('style')
<style>
/* Mejor resaltado para "Versión Vigente" en modo oscuro */
.tr-vigente {
    background: #1a3222 !important;  /* Verde oscuro, no molesta */
    color: #fff !important;
    border-left: 4px solid #33cc66;
}
.tr-vigente td, .tr-vigente th {
    color: #fff !important;
}
.tr-vigente .badge-success {
    background: #33cc66;
    color: #111;
}
</style>

</head>
<body data-background-color="dark">
	<div class="wrapper @yield('sidebar')">

    {{-- top navbar area start --}}
    @includeif('admin.partials.top-navbar')
    {{-- top navbar area end --}}


    {{-- side navbar area start --}}
    @includeif('admin.partials.side-navbar')
    {{-- side navbar area end --}}


		<div class="main-panel">
        <div class="content">
            <div class="page-inner">
            @yield('content')
            </div>
        </div>
            @includeif('admin.partials.footer')
		</div>

	</div>

	@includeif('admin.partials.scripts')

    {{-- Loader --}}
    <div class="request-loader">
        <img src="{{asset('assets/admin/img/loader.gif')}}" alt="">
    </div>
    {{-- Loader --}}
 
</body>
</html>
