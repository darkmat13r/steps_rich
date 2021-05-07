<?php

use App\Http\Controllers\Frontend\Auth\LoginController;
use App\Http\Controllers\Frontend\Auth\RegisterController;
use App\Http\Controllers\Frontend\HealthConditionController;
use App\Http\Controllers\Frontend\UserActivityController;
use App\Http\Controllers\Frontend\UserProfileController;
use App\Services\AuthService;
use Faker\Factory;
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
Route::post('login', [LoginController::class, 'login']);
Route::post('register', [RegisterController::class, 'register']);
Route::post('forgot-password', [\App\Http\Controllers\Frontend\PasswordResetLinkController::class, 'store'])
    ->middleware('guest');
Route::group(['middleware' => ['auth:api', 'timezone']], function () {

    Route::put('user', [UserProfileController::class, 'update']);
    Route::post('user/bank/account', [\App\Http\Controllers\Frontend\BankAccountController::class, 'create']);
    Route::post('user/transfer/receipt', [\App\Http\Controllers\Frontend\BanTransferReceiptController::class, 'upload']);
    Route::get('user', [UserProfileController::class, 'getProfile']);
    Route::put('user/health', [UserProfileController::class, 'updateHealthData']);
    Route::post('user/activity/{name}', [UserActivityController::class, 'log']);
    Route::get('user/activity/today', [UserActivityController::class, 'getLastEntry']);
    Route::get('health-conditions', [HealthConditionController::class, 'getAll']);
    Route::get('rewards', [\App\Http\Controllers\Frontend\UserRewardController::class, 'getRewards']);
    Route::get('history', [\App\Http\Controllers\Frontend\UserLevelHistoryController::class, 'getAll']);
});

Route::post("paypal/order/{userId}", [\App\Http\Controllers\Frontend\PaymentController::class, 'createOrder']);
Route::post('paypal/verify/{orderId}', [\App\Http\Controllers\Frontend\PaymentController::class, 'verify']);
Route::post('paypal/callback', [\App\Http\Controllers\Frontend\PaymentController::class, 'callback']);


Route::group(['middleware' => 'auth:api'], function () {
    Route::get('feed', [\LaravelFeed\Controllers\FeedController::class, "getAll"]);
    Route::post('feed', [\LaravelFeed\Controllers\FeedController::class, "create"]);
    Route::post('feed/{id}', [\LaravelFeed\Controllers\FeedController::class, "update"]);
    Route::get('feed/{id}', [\LaravelFeed\Controllers\FeedController::class, "get"]);
    Route::delete('feed/{id}', [\LaravelFeed\Controllers\FeedController::class, "delete"]);


    Route::post('feed/{id}/like', [\LaravelFeed\Controllers\FeedLikeController::class, "like"]);
    Route::post('feed/{id}/comment', [\LaravelFeed\Controllers\FeedCommentsController::class, "create"]);
    Route::get('feed/{id}/comment', [\LaravelFeed\Controllers\FeedCommentsController::class, "getAll"]);
});


Route::get("testReward", function () {
    $userService = new \App\Services\UserService();
    $rewardService = new \App\Services\UserRewardService();


    $arr = [
        0 => 88,
    1 => 35,
    2 => 38,
    3 => 44,
    4 => 46,
    5 => 49,
    6 => 70,
    7 => 81,
    8 => 82,
    9 => 90,
    10 => 92,
    ];

    $arr = [91];
    foreach ($arr as $r){

        \Illuminate\Support\Facades\Log::info("======================================Reward For $r =================");
        \Illuminate\Support\Facades\Log::info("======================================  =================");
        \Illuminate\Support\Facades\Log::info("====================================== =================");
        \Illuminate\Support\Facades\Log::info("=======================================================");
        $users = \App\Models\User::where('id',  $r)->get()->shuffle();
        foreach ($users as $user) {
            $userService->upgradeLevel($user);
        }
        \Illuminate\Support\Facades\Log::info("====================================== =================");
        \Illuminate\Support\Facades\Log::info("====================================== =================");
        \Illuminate\Support\Facades\Log::info("====================================== =================");
        \Illuminate\Support\Facades\Log::info("======================================End Reward For $r =================");
    }

});
