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
    $user = \App\Models\User::find(1);
    $date = $user->created_at->diffInDays(\Carbon\Carbon::now());
   dd($date);
});
Route::get('log', function(){
    dd(file_get_contents(\Illuminate\Support\Facades\Storage::url('')));
});
