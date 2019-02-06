@include('adm.novedades.partials.header')

				</div>

				<h5>Novedades</h5>					
				<div class="divider"></div>
				<table class="index-table-logos responsive-table ">
					<thead>
						<tr>
							<th>Imagen</th>
							<th>Título</th>
							<th>Texto</th>
							<th>Categoría</th>
							<th>Orden</th>
							<th>Opciones</th>
						</tr>
					</thead>
					<tbody>
						@forelse($novedades as $n)
							<tr>
								<td style="width: 200px;"><img src="{{ asset('images/novedades/'.$n->file_image) }}"></td>
								<td style="width: 100px;">{{ $n->titulo_es }} <br> {{ $n->titulo_pt }}</td>
								<td style="width: 250px;">{!! substr($n->texto_es, 0, 150) !!} ... <br>{!! substr($n->texto_pt, 0, 150) !!} ...</td>
								<td>{{ $n->categoria->nombre_es }} <br> {{ $n->categoria->nombre_pt }}</td>
								<td>{{ $n->orden }}</td>
								<td>
									<a href=" {{ action('NovedadController@edit', $n->id)}} " class="btn-floating btn-large waves-effect waves-light orange"><i class="fas fa-pencil-alt"></i></a>
									<a onclick="return confirm('¿Realmente desea eliminar este registro?')"  href=" {{ action('NovedadController@eliminar', $n->id)}} " class="btn-floating btn-large waves-effect waves-light deep-orange"><i class="fas fa-trash-alt"></i></a>

								</td>
							</tr>
						@empty
							<tr>
								<td colspan="2">No existen registros</td>
							</tr>
						@endforelse
					</tbody>
				</table>

			</div>
		</div>
	</div>



</main>



@include('layouts.script')



<script>



	$(document).ready(function(){		
		M.AutoInit();
		$('.collapsible').collapsible();
		$('select').formSelect();  

	});
</script>


</body>

</html>