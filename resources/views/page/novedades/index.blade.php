@extends('app')

@section('content')


<body>



<div class="container" id="seccion-novedades">
	
	<div class="row">
		
	<div class="col s12 m12 l9" >
			@foreach($categorias as $c)
				@if($c->novedades->count() > 0)
					<ul class="tabs">
						<li class="tab col s3" style="text-align: left !important"><a href="#" class="active titulo-tab-novedades" >{{ $c->{'nombre_'.$idioma} }}</a></li>
					</ul>
				@endif
				@foreach($novedades as $n)
					@if($c->id == $n->categoria_id)
						<div class="card horizontal z-depth-0" style="border-top: 4px solid #222D8B; margin-top: 0;">
							<div class="card-image">
								<img src="{{ asset('images/novedades/'.$n->file_image) }}">
							</div>
							<div class="card-stacked" style="background: #fafafa !important">
								<span class="card-title" id="titulo-index-novedades">{{ $n->{'titulo_'.$idioma} }}</span>

								<div class="card-content" style="">
									<p  id="descripcion-index-novedades" >{{ substr($n->{'texto_'.$idioma}, 0, 130) }}...</p>
									<a  id="link-index-novedades" href="{{ route('ver', $n->id) }}" ><i style=" position: relative; top: 7px;  " class="material-icons">arrow_forward</i> VER MÁS</a>
								</div>
							</div>
						</div>
					@endif
				@endforeach
			@endforeach
		</div>

		<div class="col s12 m12 l3">
			<p id="titulo-categorias">Categorías</p>
			<div class="divider" style="background: #B0B0B0;"></div>

			<ul class="collection" id="collection-novedades">
				@foreach($categorias as $c)
		      		<a href="{{ route('filtros', $c->id) }}" class="collection-item" id="collection-novedades-item"><i class="fas fa-angle-double-right" style="margin-right: 5%"></i>{{ $c->{'nombre_'.$idioma} }}</a>
		      	@endforeach
		    </ul>
		</div>
	</div>
		
</div>
	@endsection

	@include('layouts.script')
</body>
</html>


