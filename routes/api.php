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
Route::post('login',[LoginController::class,'login']);
Route::post('register',[RegisterController::class,'register']);
Route::post('forgot-password', [\App\Http\Controllers\Frontend\PasswordResetLinkController::class, 'store'])
    ->middleware('guest');
Route::group(['middleware'=>['auth:api', 'timezone']], function(){

   Route::put('user', [UserProfileController::class, 'update']);
   Route::get('user', [UserProfileController::class, 'getProfile']);
   Route::put('user/health', [UserProfileController::class, 'updateHealthData']);
   Route::post('user/activity/{name}', [UserActivityController::class, 'log']);
   Route::get('user/activity/today', [UserActivityController::class, 'getLastEntry']);
   Route::get('health-conditions', [HealthConditionController::class, 'getAll']);
   Route::get('history', [\App\Http\Controllers\Frontend\UserLevelHistoryController::class, 'getAll']);
});
Route::get('users', function(Request $request){
    $users = \App\Models\User::all();
    $profiles = [];
    $userService = new \App\Services\UserService();
    foreach ($users as $user){
        try{
            $profiles[] = $userService->getProfile($user->id);
        }catch (\Exception $e){

        }
    }
   return \App\Helpers\JsonResponse::success($profiles);
});
Route::get('user_token', function(Request $request){
    $user = \App\Models\User::find($request->get('user_id'));
    if(!$user){
        return \App\Helpers\JsonResponse::fail("User not found", 404);
    }
    $user->access_token = $user->createToken("test_token")->accessToken;
   return \App\Helpers\JsonResponse::success($user);
});


Route::get('test_reward', function (){
    $faker = Factory::create();

    $userCount = 0;
    $users = [];
    DB::statement('SET FOREIGN_KEY_CHECKS=0;');
    \App\Models\RewardHistory::truncate();
    \App\Models\UserTree::truncate();
    \App\Models\User::truncate();
    DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    $lastReferralCode = null;
   while($userCount < 4){
        $user = (new AuthService())->register([
            'country_code' => $faker->countryCode,
            'username' => $faker->email,
            'phone' => $faker->phoneNumber,
            'password' => 'password',
            'country'=>$faker->country,
            'device_id' =>$faker->text,
            'referral_code' => $lastReferralCode
        ]);
        $lastReferralCode = $user->referral_code;
        unset($user->access_token);
        $users[] = $user;
        $userCount++;
    }
    $users = \App\Models\User::all();
    //Shuffle Users

    $userService = new \App\Services\UserService();

    foreach ($users as $user){
        $userService->upgradeLevel($user);
        event(new \App\Events\LevelUpgraded($user));
    }
});
