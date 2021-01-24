<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Services\UserHealthConditionService;
use App\Services\UserService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use App\Helpers\JsonResponse;
class UserProfileController extends Controller
{
    private $userService;
    private $userHealthService;

    public function __construct()
    {
        $this->userService = new UserService();
        $this->userHealthService = new UserHealthConditionService();
    }

    function getProfile(){
        return JsonResponse::success($this->userService->getProfile(Auth::user()->id));
    }

    function update(Request  $request){
        Log::debug(json_encode($request->all()));
        $user = $this->userService->updateProfile(Auth::user()->id, $request->all());
        return JsonResponse::success($this->userService->getProfile(Auth::user()->id));
    }

    function updateHealthData(Request $request){
        Log::debug(json_encode($request->all()));
        $this->userService->updateProfile(Auth::user()->id, ['activity_level' => $request->activity_level]);
        $this->userHealthService->createMultiple(Auth::user()->id, $request->health_condition_ids);
        return JsonResponse::success($this->userService->getProfile(Auth::user()->id));
    }
}

