<?php


namespace App\Http\Controllers\Frontend;

use Illuminate\Support\Facades\Auth;
use App\Helpers\JsonResponse;
use App\Http\Controllers\Controller;
use App\Services\UserLevelHistoryService;

class UserLevelHistoryController extends Controller
{

    private $userLevelHistoryService;

    public function __construct()
    {
        $this->userLevelHistoryService = new UserLevelHistoryService();
    }


    function getAll(){
        return JsonResponse::success($this->userLevelHistoryService->getAll(Auth::id()));
    }
}
