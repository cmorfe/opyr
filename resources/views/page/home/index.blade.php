@extends('app')

@section('content')


<body>

	@include('page.partials.slider')

	<div class="container">
		<div class="row">
			<div class="col s12 center">
				<span id="titulo-busqueda">@lang('home.busqueda')</span>
				<div class="row">
			        <div class="input-field col s12 m12 l4 offset-l4">
			    		<i class="material-icons prefix" style="color: #00893A">search</i>
			    		<input id="icon_prefix" type="text" class="validate">
			    		<label for="icon_prefix">@lang('home.busqueda-label')</label>
			        </div>
				</div>
			</div>
		</div>
	</div>


	<div class="row" style="width: 90%; margin-left: 10%;">
		<div class="col s12 l12 center">
			<div class="col s12 m4 l2" style="margin-left: 10px">
				<img src="{{ asset('images/producto.jpg') }}">
			</div>
			<div class="col s12 m4 l2" style="margin-left: 10px">
				<img src="{{ asset('images/producto.jpg') }}">
			</div>
			<div class="col s12 m4 l2" style="margin-left: 10px">
				<img src="{{ asset('images/producto.jpg') }}">
			</div>
			<div class="col s12 m4 l2" style="margin-left: 10px">
				<img src="{{ asset('images/producto.jpg') }}">
			</div>
			<div class="col s12 m4 l2" style="margin-left: 10px">
				<img src="{{ asset('images/producto.jpg') }}">
			</div>
		</div>
	</div>

	<div class="row hide-on-med-and-down " style="margin-bottom: 0px; height: 279px; position: relative; background-image:url({{url('images/home/'.$informacion->file_image) }}) ">
		<div class="col s12" style="position: absolute; width: 80%; margin-left: 10%;">
			<div class="col s12 m12 l6 offset-l6" >
				<p id="informacion-titulo">{{ $informacion->{'titulo_'.$idioma} }}</p>
			</div>
			<div class="col s12 m12 l6 offset-l6" >
				<p id="informacion-descripcion">{{ $informacion->{'descripcion_'.$idioma} }}</p>
			</div>
			<div class="col s12 m12 l6" >
			</div>
		</div>
	</div>

	@endsection

	@include('layouts.script')


	<script>
		$(document).ready(function(){  
			$('#slider-home').slider({
				height: 479,
			})
		});
	</script>


</body>
</html>


