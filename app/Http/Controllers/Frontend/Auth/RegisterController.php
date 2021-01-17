<?php

namespace App\Http\Controllers\Frontend\Auth;

use App\Helpers\JsonResponse;
use App\Http\Controllers\Controller;
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


    function register(Request  $request){
        $validator = Validator::make($request->all(), [
            'username' => ['required', 'email', 'unique:users,email'],
            'password' =>  ['required'],
            'country_code' =>  ['required'],
            'phone' =>  ['required', 'unique:users'],
        ]);
        if($validator->fails())
            return JsonResponse::fail($validator->errors()->first());
        $user = $this->authService->register($request->username, $request->country_code, $request->phone, $request->password, $request->referral_code);
        return JsonResponse::success($user);
    }
}
