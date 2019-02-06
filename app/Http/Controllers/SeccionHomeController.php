<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Slider;
use App\Producto;
use App\Informacion;

class SeccionHomeController extends Controller
{
    public function index()
    {
        $sliders     = Slider::where('seccion', 'home')->get();
        $informacion = Informacion::first();
        $idioma      = \App::getLocale();
    	return view('page.home.index', compact('sliders', 'informacion', 'idioma'));
    }

    public function buscador(Request $request)
    {
        $busqueda  = $request->nombre;
        $resultado = Producto::where('descripcion', 'like', '%'.$busqueda.'%')->get();

        return view('page.home.busqueda', ['resultado' => $resultado]);
    }
}
