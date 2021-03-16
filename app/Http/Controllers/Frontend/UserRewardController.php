<?php

namespace App\Http\Controllers\Frontend;

use App\Helpers\JsonResponse;
use App\Http\Controllers\Controller;
use App\Repositories\RewardHistoryRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserRewardController extends Controller
{
    private $rewardHistoryRepo;

    public function __construct()
    {
        $this->rewardHistoryRepo = new RewardHistoryRepository();
    }


    function getRewards(){
        $user = Auth::user();
        $rewards = $this->rewardHistoryRepo->getRewards($user);
        return JsonResponse::success([
            'history' => $rewards,
            'balance' => $user->wallet_amount
        ]);

    }
}
