<?php

namespace App\Http\Controllers\Frontend\Auth;

use App\Helpers\JsonResponse;
use App\Http\Controllers\Controller;
use App\Services\AuthService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class LoginController extends Controller
{
    //
    private $authService;

    public function __construct()
    {
        $this->authService = new AuthService();
    }


    function login(Request  $request){
        $validator = Validator::make($request->all(), [
            'username' => ['required'],
            'password' =>  ['required']
        ]);
        if($validator->fails())
            return JsonResponse::fail($validator->errors()->first());

        $user = $this->authService->login($request->get('username'), $request->get('password'));
        return JsonResponse::success($user);
    }
}
