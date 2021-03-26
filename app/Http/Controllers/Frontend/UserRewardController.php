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
                    'bank_name' => 'UCO',
                    'account_number' => '411123as',
                    'account_type' => 'saving',
                    'account_name' => 'Avinash',
                ],
                'amount' =>   12.10,
                'created_at' =>'2021-02-06T23:43:30.000000Z'
            ]],
            'payout' =>  12.10,
            'total_certified' =>  12,
            'active_growth' =>  2,
            'active_achieved' => 12.10,
            'passive_growth' => 3,
            'passive_achieved' => 12.10,
            'balance' => $user->wallet_amount
        ]);

    }
}
