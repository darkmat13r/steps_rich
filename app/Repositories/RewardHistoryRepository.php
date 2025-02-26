<?php


namespace App\Repositories;


use App\Events\RewardAdded;
use App\Models\RewardHistory;
use App\Models\User;
use Illuminate\Support\Facades\Log;

class RewardHistoryRepository
{

    function getRewards(User  $user){
        return RewardHistory::where('user_id', $user->id)
            ->with('fromUser')
            ->orderBy('created_at', 'DESC')
            ->get();
    }


    function getReward(User $user,User $fromUser,$fromUserTreeLevel){
        Log::error(sprintf("Getting from %s level to %s ,  %s %s",$fromUser->id, $fromUser->level, $user->id, $fromUserTreeLevel ));
        return RewardHistory::where('user_id', $user->id)
            ->where('from_step_level', $fromUser->level)//TODO Check Here If its working fine or not $user->level-1
            ->where('from_id', $fromUser->id)
            ->where('from_tree_level', $fromUserTreeLevel)
            ->first();
    }

    function addReward($user,  $fromUser, $fromUserTreeLevel, $amount){
        $reward = (new RewardHistory())->forceFill([
            'user_id' => $user->id,
            'user_step_level' => $user->level,//TODO Check Here If its working fine or not old value was $user->level-1
            'from_id' => $fromUser->id,
            'from_tree_level' => $fromUserTreeLevel,
            'from_step_level' => $fromUser->level,
            'amount' => $amount
        ]);
        Log::error("Reward added =====================> " . json_encode($reward));
        $reward->save();
        event(new RewardAdded($reward));
        return $reward;
    }
}
