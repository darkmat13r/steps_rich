<?php

namespace App\Http\Controllers\Frontend\Auth;

use App\Helpers\JsonResponse;
use App\Http\Controllers\Controller;
use App\Services\AuthService;
use App\Services\UserService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class LoginController extends Controller
{
    //
    private $authService;
    private $userService;

    public function __construct()
    {
        $this->authService = new AuthService();
        $this->userService = new UserService();
    }


    function login(Request  $request){
        $validator = Validator::make($request->all(), [
            'username' => ['required'],
            'password' =>  ['required']
        ]);
        if($validator->fails())
            return JsonResponse::fail($validator->errors()->first());

        $username = $request->get('username');
        $user = $this->authService->login($username,
            $request->get('password'));
        $user  = $this->userService->getProfile($user->id);
        $user->access_token = $user->createToken($username)->accessToken;
        return JsonResponse::success($user);
    }
}
