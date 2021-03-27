<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin\ProfileController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\HealthConditionController;

use App\Http\Controllers\Admin\RewardSettingController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\LevelRequirementController;
use App\Http\Controllers\Admin\RewardController;




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
    return view('auth.login');
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
Route::get('/seed', function(){
    \Illuminate\Support\Facades\Artisan::call('cache:clear') ;
    \Illuminate\Support\Facades\Artisan::call('db:seed --class=RewardSettingsSeeder') ;
    \Illuminate\Support\Facades\Artisan::call('db:seed --class=RoleSeeder') ;
    \Illuminate\Support\Facades\Artisan::call('cache:clear') ;
    return \App\Helpers\JsonResponse::success("Seeding Complete");
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

Route::post('user/login',[LoginController::class,'login'])->name('userLogin');

Route::group(['middleware' => ['role:admin','auth'],'prefix'=>'admin'], function (){
    Route::get('/dashboard', [HomeController::class, 'index'])->name('admin.dashboard');

    // Profile
    Route::get('/profile', [ProfileController::class, 'index']);
    Route::post('/update/profile', [ProfileController::class, 'updateProfile']);

    // Health Condition Master
    Route::resource('/health-conditions', HealthConditionController::class);


    // Reward Setting Master
    Route::resource('/reward-setting', RewardSettingController::class);

    // Admin Master
    Route::resource('/admins', AdminController::class);

    // Health Condition Master
    Route::get('/level-requirements/getData', [LevelRequirementController::class, 'getData']);
    Route::resource('/level-requirements', LevelRequirementController::class);

    // Users
    Route::get('/users/getData',[UserController::class,'getData']);
    Route::get('/users/getPendingData',[UserController::class,'getPendingData']);
    Route::get('/users/index',[UserController::class,'index']);
    Route::get('/users/pending',[UserController::class,'indexPending']);
    Route::get('/users/approve/{id}',[UserController::class,'approve']);
    Route::get('/users/view/{id}',[UserController::class,'view']);

    // Payout
    Route::get('payout-report-excel', [UserController::class, 'payoutExcel']);
    Route::get('payout/getData',[UserController::class,'getPayoutData']);
    Route::post('payout/done',[UserController::class,'payoutDone']);
    Route::get('payout',[UserController::class,'payout']);

    // Transaction
    Route::get('transaction/getData',[UserController::class,'getTransactionData']);
    Route::get('transaction',[UserController::class,'transaction']);


    // Rewards
    Route::get('/rewards/getData', [RewardController::class,'getData']);
    Route::get('/rewards', [RewardController::class,'index']);

});

Route::get('referral', function (){
   return view('referral');
});
