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
            'rewards' => $rewards,
            'payouts' => [[
                'bank'=> [
                    'bank_name' => '',
                    'account_number' => '',
                    'account_type' => '',
                    'account_name' => '',
                ],
                'amount' =>   12.10,
                'created_at' =>''
            ]],
            'payout' =>  12.10,
            'total_certified' =>  12.10,
            'active_growth' =>  12.10,
            'active_achieved' => 12.10,
            'passive_growth' =>  12.10,
            'passive_achieved' => 12.10,
            'balance' => $user->wallet_amount
        ]);

    }
}
