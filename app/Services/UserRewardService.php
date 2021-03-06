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

        //Own income
        $currentLevel = 0;
        $userLevel = $user->level-1;
        Log::info("=================Start Reward ==================");
        Log::info('User Level ' . $user->level);
        if( $userLevel == 1){
            $rewardSettings = RewardSetting::where('step_level',$userLevel )
                ->where('tree_level', $currentLevel)->first();
            Log::info("Current Level " . $currentLevel);
            Log::info("User level test " . $userLevel);
            if ($rewardSettings) {
                Log::info("Reward Settings found " . json_encode($rewardSettings));
                //Check if he has already earned that reward
                $rewardHistory = $this->rewardHistoryRepo->getReward($user,  $user, $currentLevel);
                Log::info("Did User get reward for  : User name " . $user->email . " " . $currentLevel . " - " . ($rewardHistory != null));
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
        Log::info("NextReward Setting  : " . json_encode($nextRewardSetting));
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
        Log::info("=================End Reward ==================");
    }

}
