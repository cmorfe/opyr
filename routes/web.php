<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'SeccionHomeController@index');
Route::get('/search', 'SeccionHomeController@buscador');

Route::get('empresa', 'SeccionEmpresaController@index');

Route::get('servicios', 'SeccionServicioController@index');

//Sección CONTACTO
Route::resource('/contacto', 'SeccionContactoController');

//Sección de Novedades
Route::get('/novedades', 'SeccionNovedadesController@index');
Route::get('/novedades/filtros/{id}', 'SeccionNovedadesController@filter')->name('filtros');
Route::get('/novedades/ver/{id}', 'SeccionNovedadesController@ver')->name('ver');
Auth::routes();


Route::prefix('adm')->group(function () {

	//Rutas para la gestión de usuarios administrativos
	Route::get('home', 'AdminController@index')->name('admin.dashboard');
	Route::get('dashboard', 'AdminController@index')->name('admin.dashboard');
	Route::get('admin/register', 'AdminController@create')->name('admin.register');
	Route::post('admin/register', 'AdminController@store')->name('admin.register.store');
	Route::get('/', 'Auth\Admin\LoginController@login')->name('admin.auth.login');
	Route::post('login', 'Auth\Admin\LoginController@loginAdmin')->name('admin.auth.loginAdmin');
	Route::post('logout', 'Auth\Admin\LoginController@logout')->name('admin.auth.logout');
	Route::get('admin/listar', 'AdminController@listar');
	Route::get('admin/edit/{id}', 'AdminController@edit');
	Route::put('admin/update/{id}', 'AdminController@update');
	Route::get('admin/eliminar/{id}', 'AdminController@eliminar');

	//Ruta para la gestión de sliders
	Route::get('{seccion}/slider/', 'SliderController@index');
	Route::get('{seccion}/slider/crear/', 'SliderController@create');
	Route::post('{seccion}/slider', 'SliderController@store');
	Route::get('{seccion}/slider/edit/{id}', 'SliderController@edit');
	Route::put('{seccion}/slider/update/{id}', 'SliderController@update');
	Route::get('slider/delete/{id}', 'SliderController@eliminar');

	
	//Ruta para la gestión de logos
	Route::resource('general/condiciones', 'CondicionController');
	
	//Ruta para la gestión de logos
	Route::resource('logos', 'LogoController');

	//Ruta para la gestión de metadatos
	Route::resource('metadatos', 'MetadatoController');

	//Ruta para la gestión de usuarios 
	Route::prefix('empresa/')->group(function () {
		Route::resource('index', 'EmpresaController');
	});
	

// Admin Novedades
	Route::prefix('novedades')->group(function () {
		Route::resource('/index', 'NovedadController');	
		Route::get('delete/{id}', 'NovedadController@eliminar');	
		
		Route::resource('/categorias', 'CategoriaController');
		Route::get('/categorias/delete/{id}', 'CategoriaController@eliminar');
	});


	// Admin Servicios
	Route::prefix('servicios/')->group(function () {
		Route::resource('servicio', 'ServicioController')->except(['show']);
		Route::get('delete/{id}', 'ServicioController@eliminar');
	});

	//Ruta para la gestión de contacto y redes
	Route::prefix('datos')->group(function () {
		Route::get('contacto', 'DatoController@contacto');
		Route::get('contacto/edit/{id}', 'DatoController@editContacto');
		Route::get('redes', 'DatoController@redes');
		Route::get('redes/edit/{id}', 'DatoController@editRedes');
		Route::put('update/{id}', 'DatoController@update');
	});


});