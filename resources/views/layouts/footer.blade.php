<footer class="page-footer" id="footer" style="position: relative;">
		<div class="row" style="margin:0;">
			<div class="col s12 m12 l4" style="padding: 5% 10%" >
				<a href="{{ url('/') }}" class="brand-logo">
					<img id="logo-footer" class="img-responsive" src="{{ asset('images/logos/'.$logos->file_image) }}" alt="">
				</a>
			</div>

			<div class="col s12 m12 l5" style="padding-top: 6%">
				<div class=" footer-text">
					<div class="row">
						<div class="col s12 m4">
							<a href=" {{ url('/')}} " >INICIO</a>
						</div>
						<div class="col s12 m4">
							<a href=" {{ url('empresa')}} " >EMPRESA</a>
						</div>
						<div class="col s12 m4">
							<a href=" {{ url('calidad')}} " >CALIDAD</a>
						</div>
					</div>
					<div class="row">
						<div class="col s12 m4">
							<a href=" {{ url('productos')}} " >PRODUCTOS</a>
						</div>
						<div class="col s12 m4">
							<a href=" {{ url('servicios')}} " >SERVICIOS</a>
						</div>
						<div class="col s12 m4">
							<a href=" {{ url('contacto')}} " >CONTACTO</a>
						</div>
					</div>
				</div>				
			</div> 

				
			<div class="col s12 m12 l3 footer-contact">
				<span id="nombre-footer">CONTACTO</span>
				<ul style="margin-top: 5%;">
					<li class="footer-text" style="margin-bottom: 10px">
						<div class="row">
							<div class="col s1 footer-icon">
								<i class="fas fa-map-marker-alt"></i>
							</div>
							<div class="col s10">
								<a href="https://goo.gl/maps/wosGhSCQNY42" target="_blank">{{ $direccion->descripcion }}</a> 
							</div>
						</div>
					</li>
					<li class="footer-text" >
						<div class="row">
							<div class="col s1 footer-icon">
								<i class="fas fa-phone-volume"></i>
							</div>
							<div class="col s10">
								<a href="tel:{{ $telefono_1->descripcion }}">{{ $telefono_1->descripcion }}</a></br>
								<a href="tel:{{ $telefono_2->descripcion }}">{{ $telefono_2->descripcion }}</a></br>
								<a href="tel:{{ $telefono_3->descripcion }}">{{ $telefono_3->descripcion }}</a>
							</div>
						</div>
					</li>
					<li class="footer-text" style="margin-bottom: 10px">
						<div class="row">
							<div class="col s1 footer-icon">
								<i class="fab fa-telegram-plane"></i>
							</div>
							<div class="col s10">
								<a href="mailto:{{ $email->descripcion }}">{{ $email->descripcion }}</a> 
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="divider" style="width: 90%; margin-left: 6%; background: #A4A4A4; height: 2px;"></div>
		<div class="row" style="margin:0;">
			<div class="col s12" id="osole-span" >
				<span class="right ">BY OSOLE</span>
			</div>
		</div>
</footer>
