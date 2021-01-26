<?php

use App\Http\Controllers\Frontend\Auth\LoginController;
use App\Http\Controllers\Frontend\Auth\RegisterController;
use App\Http\Controllers\Frontend\HealthConditionController;
use App\Http\Controllers\Frontend\UserActivityController;
use App\Http\Controllers\Frontend\UserProfileController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('login',[LoginController::class,'login']);
Route::post('register',[RegisterController::class,'register']);

Route::group(['middleware'=>['auth:api', 'timezone']], function(){
   Route::put('user', [UserProfileController::class, 'update']);
   Route::get('user', [UserProfileController::class, 'getProfile']);
   Route::put('user/health', [UserProfileController::class, 'updateHealthData']);
   Route::post('user/activity/{name}', [UserActivityController::class, 'log']);
   Route::get('user/activity/today', [UserActivityController::class, 'getLastEntry']);
   Route::get('health-conditions', [HealthConditionController::class, 'getAll']);
});


