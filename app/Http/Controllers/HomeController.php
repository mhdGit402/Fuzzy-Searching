<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        // $a = similar_text(strtolower('john'), strtolower('john'), $perc1);
        // $b = similar_text(strtolower('doe'), strtolower('Doe'), $perc2);
        // return view('home', ['a' => [$a, $perc1] , 'b' => [$b, $perc2]]);
        return view('home');
    }
}
