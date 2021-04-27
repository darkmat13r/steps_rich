<?php

namespace App\Http\Controllers\Frontend\Auth;

use App\Helpers\JsonResponse;
use App\Helpers\ReferralCodeHelper;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Services\AuthService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    private $authService;

    public function __construct()
    {
        $this->authService = new AuthService();
    }


    function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'username' => ['required', 'email', 'unique:users,email'],
            'password' => ['required'],
            'country_code' => ['required'],
            'ic_no' => ['required'],
            'referral_code' => ['required'],
            'country' => ['required'],
            'device_id' => ['required', 'unique:users'],
            'phone' => ['required', 'unique:users'],
        ], [
            'device_id.unique' => 'Your device is already registered with different account'
        ]);
        if ($validator->fails())
            return JsonResponse::fail($validator->errors()->first());
        $user = $this->authService
            ->register($request->only(['username',
            'country_code','country','phone',
            'password',
            'ic_no',
            'referral_code', 'device_id']));
        return JsonResponse::success($user);
    }
}
