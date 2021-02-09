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
Route::get("test", function(){
    try{
        \Illuminate\Support\Facades\DB::beginTransaction();
        $all = \App\Models\LevelRequirement::all();
        foreach($all as &$requirement){
            $tempValue = $requirement->required_period;
            $requirement->required_period = $requirement->required_repeat;
            $requirement->required_repeat= $tempValue;

            $tempValue2 = $requirement->minimum_period;
            $requirement->minimum_period = $requirement->minimum_repeat;
            $requirement->minimum_repeat =$tempValue2;
            $requirement->save();
        }
        \Illuminate\Support\Facades\DB::commit();
    }catch (\Exception $e){
        \Illuminate\Support\Facades\DB::rollBack();
        echo  $e->getTraceAsString();
    }
    echo "Su8ccess";
});

require __DIR__.'/auth.php';
