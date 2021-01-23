<?php

namespace App\Http\Controllers\Frontend;

use App\Exceptions\GeneralException;
use App\Helpers\JsonResponse;
use App\Http\Controllers\Controller;
use App\Services\ActivityLogService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class UserActivityController extends Controller
{
    private $activityService;

    public function __construct()
    {
        $this->activityService = new ActivityLogService();
    }

    function log(Request  $request, $activity){
        $user = Auth::user();
        $validator = Validator::make($request->all(), [
            'value' => ['required'],
        ]);
        if($validator->fails())
           return JsonResponse::fail($validator->errors()->first());

        $this->activityService->log($user->id, $activity, $request->value, $request->date );
        return JsonResponse::success();
    }

    function getLastEntry(Request  $request){
        $user = Auth::user();
        return JsonResponse::success($this->activityService->getLastEntry($user->id));
    }
}
