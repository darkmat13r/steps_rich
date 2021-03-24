<?php


namespace App\Services;


use App\Models\RewardHistory;
use App\Models\RewardSetting;
use App\Models\User;
use App\Models\UserTree;
use App\Repositories\RewardHistoryRepository;
use Illuminate\Support\Facades\Log;

class UserRewardService
{

    private $rewardHistoryRepo;

    public function __construct()
    {
        $this->rewardHistoryRepo = new RewardHistoryRepository();
    }

    function addRewards(User $user)
    {

        Log::info("Add reward Started");
        //Own income
        $currentLevel = 0;
        $userLevel = $user->level-1;
        if( $userLevel == 1){
            $rewardSettings = RewardSetting::where('step_level',$userLevel )
                ->where('tree_level', $currentLevel)->first();
            if ($rewardSettings) {
                //Check if he has already earned that reward
                $rewardHistory = $this->rewardHistoryRepo->getReward($user,  $user, $currentLevel);
                if (!$rewardHistory) {
                    $this->rewardHistoryRepo->addReward($user,  $user, $currentLevel, $rewardSettings->reward);
                }
            }
        }


        //Add reward to upline
        $nextTreeLevel =  $currentLevel + 1;
        $userTree = UserTree::where('child_user_id', $user->id)->first();

        $nextRewardSetting = RewardSetting::where('tree_level',$nextTreeLevel)
            ->where('step_level', $user->level)
            ->first();
        $lastUser = $user;
        while ($userTree && $nextRewardSetting) {
            $nextUser = User::find($userTree->parent_user_id);

            $rewardHistory = $this->rewardHistoryRepo->getReward($nextUser,  $lastUser, $nextTreeLevel);
            if(!$rewardHistory){
                $this->rewardHistoryRepo->addReward($nextUser,  $lastUser, $nextTreeLevel, $nextRewardSetting->reward);
            }

            $nextTreeLevel = $nextRewardSetting->tree_level + 1;
            $nextRewardSetting = RewardSetting::where('tree_level', $nextTreeLevel)
                ->where('step_level', $nextUser->level)
                ->first();
            $userTree = UserTree::where('child_user_id', $nextUser->id)->first();
            $lastUser = $nextUser;
        }
    }

}
