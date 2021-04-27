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
Route::get('users', function (Request $request) {
    $users = \App\Models\User::all();
    $profiles = [];
    $userService = new \App\Services\UserService();
    foreach ($users as $user) {
        try {
            $profiles[] = $userService->getProfile($user->id);
        } catch (\Exception $e) {

        }
    }
    return \App\Helpers\JsonResponse::success($profiles);
});
Route::get('user_token', function (Request $request) {
    $user = \App\Models\User::find($request->get('user_id'));
    if (!$user) {
        return \App\Helpers\JsonResponse::fail("User not found", 404);
    }
    $user->access_token = $user->createToken("test_token")->accessToken;
    return \App\Helpers\JsonResponse::success($user);
});

Route::post("paypal/order/{userId}", [\App\Http\Controllers\Frontend\PaymentController::class, 'createOrder']);
Route::post('paypal/verify/{orderId}', [\App\Http\Controllers\Frontend\PaymentController::class, 'verify']);
Route::post('paypal/callback', [\App\Http\Controllers\Frontend\PaymentController::class, 'callback']);

Route::get('testPayout', function () {
    $response = new \App\Services\Payment\PaypalGateway();
    $orderRequest = new \App\Services\Payment\BatchPayoutRequest();
    $orderRequest->setEmailMessage("You have received a payout!");
    $orderRequest->setEmailSubject("You have a payout");
    $orderRequest->addPayoutReceiver((new \App\Services\Payment\PayoutReceiverBuilder())
        ->setAmount("100.00")
        ->setCurrency('USD')
        ->setNote('Thanks for your support')
        ->setSenderItemId(\Carbon\Carbon::now()->timestamp . "_1")
        ->setReceiver('payouts-simulator-receiver@paypal.com')

    );
  //  $data = $response->verifyPayout('SAEM44T62EYEE');
    (new \App\Services\PayoutService())->sendPayouts();
    dd();
});
Route::get('testOrder', function () {
    $response = new \App\Services\Payment\PaypalGateway();
    $orderRequest = new \App\Services\Payment\OrderRequest();
    $orderRequest->setAmount("100.00");
    $orderRequest->setUserId(10);
    $data = $response->verify('7LU61470LL154505S');
    dd($data);
});
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
