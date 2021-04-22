<?php

namespace App\Http\Controllers\Frontend;

use App\Helpers\JsonResponse;
use App\Http\Controllers\Controller;
use App\Models\Transaction;
use App\Repositories\RewardHistoryRepository;
use App\Services\RewardHistoryService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserRewardController extends Controller
{
    private $rewardHistoryRepo;
    private $rewardHistoryService;

    public function __construct()
    {
        $this->rewardHistoryRepo = new RewardHistoryRepository();
        $this->rewardHistoryService = new RewardHistoryService();
    }


    function getRewards(){
        $user = Auth::user();
        $rewards = $this->rewardHistoryRepo->getRewards($user);
        $transact = $user->transactions;
        $activeGrowth = count($this->rewardHistoryService->getActiveGrowth($user->id));
        $passive = $this->rewardHistoryService->getDownlineGrowth($user->id);
        $passiveGrowth = $passive['growth'];
        $certified = $passiveGrowth + $activeGrowth;
        $payoutAmount = Transaction::where('user_id', $user->id)->sum('amount');
        return JsonResponse::success([
            'rewards' => $rewards,
            'payouts' => $transact,
            'payout' =>  $payoutAmount,
            'total_certified' =>  $certified,
            'active_growth' =>  $activeGrowth,
            'active_achieved' => count($this->rewardHistoryService->getActiveAcheivedGrowth($user->id)),
            'passive_growth' => $passiveGrowth,
            'passive_achieved' => $passive['achieved'],
            'balance' => $user->wallet_amount
        ]);

    }
}
