
	<ul id="slide-out" class="sidenav sidenav-fixed">
		<div class="logo-admin">
			<a href="{{ route('admin.dashboard') }}">
				<img class="responsive-img" src='{{ asset("images/logos/".$logos->file_image) }}' alt="">
			</a>
		</div>

		<div class="divider"></div>

			<li class="no-padding">
				<ul class="collapsible collapsible-accordion">
					<li class="bold"><a class="collapsible-header waves-effect waves-grey {{ (\Request::is('adm/home/*'))?"seccion-activa":"" }}" tabindex="0"  ><i class="material-icons">home</i>Home</a>
						<div class="collapsible-body" {{ (\Request::is('adm/home/*'))?"style=display:block;":"" }}>
							<ul>
								<li><a href="#"><i class="material-icons">navigate_next</i>Información</a></li>
								<li><a href=""><i class="material-icons">navigate_next</i>Productos Destacados</a></li>
								<li><a href="{{ action('SliderController@create', ['seccion' => 'home']) }}"><i class="material-icons">navigate_next</i>Crear Sliders</a></li>
								<li><a href="{{ action('SliderController@index', ['seccion' => 'home']) }}"><i class="material-icons">navigate_next</i>Ver Sliders</a></li>
							</ul>							
						</div>
					</li>
				</ul>
			 	<ul class="collapsible collapsible-accordion">
					<li class="bold"><a class="collapsible-header waves-effect waves-grey {{ (\Request::is('adm/productos*'))?"seccion-activa":"" }}" tabindex="0" ><i class="material-icons">shopping_cart</i>Productos</a>
						<div class="collapsible-body"  {{ (\Request::is('adm/productos*'))?"style=display:block;":"" }}>
							<ul>
						
							</ul>
						</div>
					</li>
				</ul>
				<ul class="collapsible collapsible-accordion">
					<li class="bold"><a class="collapsible-header waves-effect waves-grey {{ (\Request::is('adm/empresa*'))?"seccion-activa":"" }}" tabindex="0"  ><i class="material-icons">business</i>Quiénes Somos</a>
						<div class="collapsible-body"  {{ (\Request::is('adm/empresa*'))?"style=display:block;":"" }}>
							<ul>
								<li><a href="{{ action('EmpresaController@index') }}"><i class="material-icons">navigate_next</i>Datos de la Empresa</a></li>
								<li><a href="{{ action('SliderController@create', ['seccion' => 'empresa']) }}"><i class="material-icons">navigate_next</i>Crear Sliders</a></li>
								<li><a href="{{ action('SliderController@index', ['seccion' => 'empresa']) }}"><i class="material-icons">navigate_next</i>Ver Sliders</a></li>
							</ul>
						</div>
					</li>
				</ul>
				<ul class="collapsible collapsible-accordion">
					<li class="bold"><a class="collapsible-header waves-effect waves-grey {{ (\Request::is('adm/servicios*'))?"seccion-activa":"" }}" tabindex="0"  ><i class="fas fa-hand-holding-heart"></i> Servicios</a>
						<div class="collapsible-body"  {{ (\Request::is('adm/servicios*'))?"style=display:block;":"" }}>
							<ul>
								<li><a href="{{ action('ServicioController@create') }}"><i class="material-icons">navigate_next</i>Crear Servicios</a></li>
								<li><a href="{{ action('ServicioController@index') }}"><i class="material-icons">navigate_next</i>Ver Servicios</a></li>
							</ul>
						</div>
					</li>
				</ul>
			 	<ul class="collapsible collapsible-accordion">
					<li class="bold"><a class="collapsible-header waves-effect waves-grey {{ (\Request::is('adm/novedades*'))?"seccion-activa":"" }}" tabindex="0" ><i class="material-icons">new_releases</i>Novedades</a>
						<div class="collapsible-body"  {{ (\Request::is('adm/novedades*'))?"style=display:block;":"" }}>
							<ul>
								<li><a href="{{ action('CategoriaController@create') }}" ><i class="material-icons">navigate_next</i>Crear Categoría</a></li>
								<li><a href="{{ action('CategoriaController@index') }}" ><i class="material-icons">navigate_next</i>Ver Categorías</a></li>
								<li><a href="{{ action('NovedadController@create') }}"><i class="material-icons">navigate_next</i>Crear Novedad</a></li>
								<li><a href="{{ action('NovedadController@index') }}" ><i class="material-icons">navigate_next</i>Ver Novedades</a></li>
							</ul>
						</div>
					</li>
				</ul>
				<ul class="collapsible collapsible-accordion">
					<li class="bold"><a class="collapsible-header waves-effect waves-grey {{ (\Request::is('adm/datos*'))?"seccion-activa":"" }}" tabindex="0"  ><i class="material-icons">phone</i>Contacto</a>
						<div class="collapsible-body"  {{ (\Request::is('adm/datos*'))?"style=display:block;":"" }}>
							<ul>
								<li><a href="{{ action('DatoController@contacto') }}"><i class="material-icons">navigate_next</i>Datos de Contacto</a></li>
							</ul>
						</div>
					</li>
				</ul>
				<ul class="collapsible collapsible-accordion">
					<li class="bold"><a class="collapsible-header waves-effect waves-grey {{ (\Request::is('adm/logos*'))?"seccion-activa":"" }}" tabindex="0"  ><i class="fab fa-delicious"></i>Logos</a>
						<div class="collapsible-body"  {{ (\Request::is('adm/logos*'))?"style=display:block;":"" }}>
							<ul>
								<li><a href="{{ action('LogoController@index') }}"><i class="material-icons">navigate_next</i>Ver Logos</a></li>
							</ul>
						</div>
					</li>
				</ul>
				<ul class="collapsible collapsible-accordion">
					<li class="bold"><a class="collapsible-header waves-effect waves-grey {{ (\Request::is('adm/general*'))?"seccion-activa":"" }}" tabindex="0"  ><i class="fas fa-sliders-h"></i>General</a>
						<div class="collapsible-body"  {{ (\Request::is('adm/general*'))?"style=display:block;":"" }}>
							<ul>
								<li><a href="{{ action('CondicionController@edit', '1') }}"><i class="material-icons">navigate_next</i>Términos y Condiciones</a></li>
							</ul>
						</div>
					</li>
				</ul>
				<ul class="collapsible collapsible-accordion">
					<li class="bold"><a class="collapsible-header waves-effect waves-grey {{ (\Request::is('adm/metadatos*'))?"seccion-activa":"" }}" tabindex="0"  ><i class="material-icons">data_usage</i>Metadatos</a>
						<div class="collapsible-body"  {{ (\Request::is('adm/metadatos*'))?"style=display:block;":"" }}>
							<ul>
								<li><a href="{{ action('MetadatoController@index') }}"><i class="material-icons">navigate_next</i>Ver Metadatos</a></li>
							</ul>
						</div>
					</li>
				</ul>
				@if(\Auth::user()->tipo == 'admin')

					<ul class="collapsible collapsible-accordion">
						<li class="bold"><a class="collapsible-header waves-effect waves-grey {{ (\Request::is('adm/admins/*'))?"seccion-activa":"" }}" tabindex="0"  ><i class="material-icons">people</i>Usuarios</a>
							<div class="collapsible-body"  {{ (\Request::is('adm/admins/*'))?"style=display:block;":"" }}>
								<ul>
									<li><a href="{{ action('AdminController@create') }}"><i class="material-icons">navigate_next</i>Crear Usuario</a></li>
									<li><a href="{{ action('AdminController@listar') }}"><i class="material-icons">navigate_next</i>Editar Usuarios</a></li>
								</ul>
							</div>
						</li>
					</ul>

				@endif
			</li>
		</div>
	</ul>
<a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>
