		<div class="col s12 m4" style="margin-top: 5%">
			<ul>
				<li class="contacto-text" style="margin-bottom: 10px">
					<div class="row">
						<div class="col s1 contacto-icon">
							<i class="fas fa-map-marker-alt"></i>
						</div>
						<div class="col s10">
							<a href="https://goo.gl/maps/wosGhSCQNY42" target="_blank">{{ $direccion->descripcion }}</a> 
						</div>
					</div>
				</li>
				<li class="contacto-text" >
					<div class="row">
						<div class="col s1 contacto-icon">
							<i class="fas fa-phone-volume"></i>
						</div>
						<div class="col s10">
							<span>Teléfonos:</span>
						</div>
						<div class="col s9 offset-s1">
							<a href="tel:{{ $telefono_1->descripcion }}">{{ $telefono_1->descripcion }}</a> <br>
							<a href="tel:{{ $telefono_2->descripcion }}">{{ $telefono_2->descripcion }}</a> <br>
							<a href="tel:{{ $telefono_3->descripcion }}">{{ $telefono_3->descripcion }}</a>
						</div>
					</div>
				</li>
				<li class="contacto-text" style="margin-bottom: 10px">
					<div class="row">
						<div class="col s1 contacto-icon">
							<i class="fas fa-envelope"></i>
						</div>
						<div class="col s10">
							<a href="mailto:{{ $email->descripcion }}">{{ $email->descripcion }}</a> 
						</div>
					</div>
				</li>
			</ul>
		</div>