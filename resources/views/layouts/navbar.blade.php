

<!-- Cabecera de la página -->

<div id="dropdown1" class="dropdown-content" style="width: 300px !important; " id="login">
	<form method="POST" action="{{ route('login') }}" aria-label="{{ __('Login') }}" style="padding: 15px; width: 250px; height: 230px">
		@csrf
		<div class="col s6">
			<input placeholder="Usuario" name="username" type="text" class="validate" autocomplete="off">
		</div>

		<div class="col s6">
			<input placeholder="Contraseña" name="password" type="password" class="validate" >
		</div>

		<center>
			<div class='row' style="padding-top: 20px; ">
				<button style="background-color: #3241C4; border: 1px solid #3241C4;color:#FFFFFF ; width: 165px; height: 45px" id="btn-login" type='submit' name='btn_login' >ENVIAR</button>
			</div>
		</center>
		<a id="login-password" href="{{ route('password.request') }}"><h6 class="center" for="">Olvidé mi contraseña </h6></a>

	</form>
	<div class="divider"></div>
	<a id="login-cuenta" href="{{ route('register') }}"><h5 class="center" for="">CREAR UNA CUENTA NUEVA</h5></a>
</div>

<nav id="header" class=" z-depth-0">
	<div class="nav-wrapper z-depth-0 hide-on-med-and-down header-top">
		<div class="container">		 
			<a href="{{ url('/') }}" class="brand-logo center"><img src="{{ asset('images/logos/'.$logos->file_image) }}"></a>
	        <ul id="nav-mobile" class="left hide-on-med-and-down header-top-ul" style="height: 115px; display: flex; justify-content: center; align-items: center;">       
	            <li> <i class="fab fa-whatsapp"></i></li>
	            <li> <a href="tel: {{ $telefono_1->descripcion }}">{{ $telefono_1->descripcion }}</a> </li>
	        </ul>
	        <ul id="nav-mobile" class="right hide-on-med-and-down header-top-ul" style=";height: 115px; display: flex; justify-content: center; align-items: center;">       
	            <li> <i class="material-icons">account_circle</i> </li>
	            <li> <a href="#"> COMUNIDAD OPYR </a> </li>
	            <li style="color: #1CA22E; margin-left: 10px"><i class="material-icons">search</i></li>
	            <li> | </li>
	            <li>ES</li>
	        </ul>
		</div>
	</div>
	<div class="nav-content">
		<ul id="nav-mobile" class="center hide-on-med-and-down header-secciones" >
            <li><a href="{{ url('empresa') }}" {{ (\Request::is('empresa*'))?"id=seccion-active":"" }}>EMPRESA</a></li>
            <li><a href="{{ url('productos') }}" {{ (\Request::is('productos*'))?"id=seccion-active":"" }}>PRODUCTOS</a></li>
            <li><a href="{{ url('servicios') }}" {{ (\Request::is('servicios*'))?"id=seccion-active":"" }}>SERVICIOS</a></li>
            <li><a href="{{ url('novedades') }}" {{ (\Request::is('novedades*'))?"id=seccion-active":"" }}>ESCUELA OPyR</a></li>
            <li><a href="{{ url('distribuidores') }}" {{ (\Request::is('distribuidores*'))?"id=seccion-active":"" }}>DISTRIBUIDORES</a></li>
            <li><a href="{{ url('calidad') }}" {{ (\Request::is('calidad*'))?"id=seccion-active":"" }}>CALIDAD</a></li>
            <li><a href="{{ url('contacto') }}" {{ (\Request::is('contacto*'))?"id=seccion-active":"" }}>CONTACTO</a></li>
        </ul>			
	</div>
</nav>

<ul class="sidenav" id="mobile-demo">
    <li><a href="{{ url('empresa') }}" {{ (\Request::is('empresa'))?"id=seccion-active":"" }}>EMPRESA</a></li>
    <li><a href="{{ url('productos') }}" {{ (\Request::is('productos'))?"id=seccion-active":"" }}>PRODUCTOS</a></li>
    <li><a href="{{ url('servicios') }}" {{ (\Request::is('servicios'))?"id=seccion-active":"" }}>SERVICIOS</a></li>
    <li><a href="{{ url('novedades') }}" {{ (\Request::is('novedades'))?"id=seccion-active":"" }}>ESCUELA OPyR</a></li>
    <li><a href="{{ url('distribuidores') }}" {{ (\Request::is('distribuidores'))?"id=seccion-active":"" }}>DISTRIBUIDORES</a></li>
    <li><a href="{{ url('calidad') }}" {{ (\Request::is('calidad'))?"id=seccion-active":"" }}>CALIDAD</a></li>
    <li><a href="{{ url('contacto') }}" {{ (\Request::is('contacto'))?"id=seccion-active":"" }}>CONTACTO</a></li>
</ul>

