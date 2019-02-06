@extends('app')

@section('content')


<body>
	<div class="container">
		<div class="row" id="seccion-nombre">
			<span>{{$seccion}}</span>
			<div class="divider" style="width:7%; background: #00883E; height: 2px;"></div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<span id="texto1-servicios">
				{{ $texto->{'texto1_'.$idioma} }}
			</span>
		</div>
		<div class="row">
			<span id="texto2-servicios">
				{{ $texto->{'texto2_'.$idioma} }}
			</span>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			@forelse($servicios as $s)
				<div class="col s12 m12 l4">
					<div class="row center">
						<img src="{{ asset('images/servicios/'.$s->file_image) }}">
					</div>	
					<div class="row center" style="min-height: 100px;">
						{!! $s->{'descripcion_'.$idioma} !!}
					</div>
				</div>
			@empty
			@endforelse
		</div>	
	</div>



	<div id="form-servicios" style="margin-bottom: 0">
		<div class="container">
			@include('page.partials.alert')
			<div class="textos center">				
				<p id="titulo-formulario">@lang('servicios.formulario')</p>
				<p id="label-formulario">@lang('servicios.formulario-label')</p>
			</div>
			@include('page.partials.form')
		</div>
	</div>

	@endsection

	@include('layouts.script')

</body>
</html>


