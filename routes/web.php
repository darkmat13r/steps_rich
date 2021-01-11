<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});
Route::get('test', function(){
    $path = \Illuminate\Support\Facades\Storage::path('../logs/laravel-'.\Carbon\Carbon::now()->format('Y-m-d').'.log');
  dd(file_get_contents($path));
});
Route::get('log', function(){
    dd(file_get_contents(\Illuminate\Support\Facades\Storage::url('')));
});
