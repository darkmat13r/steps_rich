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

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

Route::get('/install', function(){
    \Illuminate\Support\Facades\Artisan::call('cache:clear') ;
    \Illuminate\Support\Facades\Artisan::call('migrate') ;
    \Illuminate\Support\Facades\Artisan::call('db:seed');
    \Illuminate\Support\Facades\Artisan::call('passport:install');
    \Illuminate\Support\Facades\Artisan::call('cache:clear') ;
    return \App\Helpers\JsonResponse::success("App Installed");

});
Route::get('/migrate', function(){
    \Illuminate\Support\Facades\Artisan::call('cache:clear') ;
    \Illuminate\Support\Facades\Artisan::call('migrate') ;
    \Illuminate\Support\Facades\Artisan::call('cache:clear') ;
    return \App\Helpers\JsonResponse::success("App Installed");

});
Route::get('/cache', function(){
    \Illuminate\Support\Facades\Artisan::call('cache:clear') ;
    \Illuminate\Support\Facades\Artisan::call('config:clear') ;
    return \App\Helpers\JsonResponse::success("App Cache Cleared");

});
Route::get("test", function(){
    \App\Jobs\UpdateLevelJob::dispatch();
});

require __DIR__.'/auth.php';
