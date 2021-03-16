<?php


namespace App\Repositories;


use App\Events\RewardAdded;
use App\Models\RewardHistory;
use App\Models\User;

class RewardHistoryRepository
{

    function getRewards(User  $user){
        return RewardHistory::where('user_id', $user->id)
            ->with('fromUser')
            ->orderBy('created_at', 'DESC')
            ->get();
    }


    function getReward(User $user,User $fromUser,$fromUserTreeLevel){
        return RewardHistory::where('user_id', $user->id)
            ->where('user_step_level', $user->level-1)
            ->where('from_id', $fromUser->id)
            ->where('from_tree_level', $fromUserTreeLevel)
            ->first();
    }

    function addReward($user,  $fromUser, $fromUserTreeLevel, $amount){
        $reward = (new RewardHistory())->forceFill([
            'user_id' => $user->id,
            'user_step_level' => $user->level-1,
            'from_id' => $fromUser->id,
            'from_tree_level' => $fromUserTreeLevel,
            'from_step_level' => $fromUser->level,
            'amount' => $amount
        ]);
        $reward->save();
        event(new RewardAdded($reward));
        return $reward;
    }
}
