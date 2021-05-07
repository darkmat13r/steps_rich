<?php


namespace App\Services;


use App\Models\RewardHistory;
use App\Models\RewardSetting;
use App\Models\User;
use App\Models\UserTree;
use App\Repositories\RewardHistoryRepository;
use Illuminate\Support\Facades\DB;
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

        Log::info("Add reward Started======================> " . $user->id);
        //Own income
        $currentTreeLevel = 0;
        $userLevel = $user->level;
        if (!$user) {
            Log::info("No user  ");
            return;
        }
        try {
            DB::beginTransaction();
            Log::info("User " . $user->id . " level " . $userLevel);
            if ($userLevel == 1) {
                $rewardSettings = RewardSetting::where('step_level', $userLevel)
                    ->where('tree_level', $currentTreeLevel)->first();
                Log::info("User " . $user->id . " level " . $userLevel);
                Log::info("Reward Settings Available " . json_encode($rewardSettings));
                if ($rewardSettings) {
                    //Check if he has already earned that reward
                    $rewardHistory = $this->rewardHistoryRepo->getReward($user, $user, $currentTreeLevel);
                    Log::info("Reward History Available " . json_encode($rewardHistory));
                    if (!$rewardHistory) {
                        Log::info("Adding Reward " . $rewardSettings->reward);
                        $this->rewardHistoryRepo->addReward($user, $user, $currentTreeLevel, $rewardSettings->reward);
                    }
                }
            }
            if ($userLevel > 0) {
                //Find Child Below him
                if($user instanceof User){
                    $findAllChildren = $this->findAllChildren($user);
                    foreach ($findAllChildren as $child){
                        if($child ){
                            $this->addRewards($child);
                        }
                    }
                }
            }


            //Add reward to upline
            $nextTreeLevel = $currentTreeLevel + 1;
            $userTree = UserTree::where('child_user_id', $user->id)->first();
            Log::info("Going up level " . $nextTreeLevel);
            $nextRewardSetting = RewardSetting::where('tree_level', $nextTreeLevel)
                ->where('step_level', $user->level)
                ->first();
            Log::info("Going up NExt Level Settings " . json_encode($nextRewardSetting));
            $lastUser = $user;
            while ($userTree && $nextRewardSetting) {
                $nextUser = User::find($userTree->parent_user_id);
                Log::info("Find Next User up tree " . json_encode($nextUser));
                if (!$nextUser) {
                    DB::commit();
                    return;
                }

                $rewardHistory = $this->rewardHistoryRepo->getReward($nextUser, $lastUser, $nextTreeLevel);
                Log::info("Find FInd reward history " . json_encode($rewardHistory));
                if (!$rewardHistory && $nextUser->level > 0) {
                    $this->rewardHistoryRepo->addReward($nextUser, $lastUser, $nextTreeLevel, $nextRewardSetting->reward);
                }

                $nextTreeLevel = $nextRewardSetting->tree_level + 1;
                Log::info("Next Tree Level : $nextTreeLevel " . json_encode($nextTreeLevel));
                $nextRewardSetting = RewardSetting::where('tree_level', $nextTreeLevel)
                    ->where('step_level', $nextUser->level)
                    ->first();
                Log::info("Next Reward Settings " . json_encode($nextRewardSetting));
                $userTree = UserTree::where('child_user_id', $nextUser->id)->first();
                Log::info("Next User Settings " . json_encode($userTree));
                $lastUser = $nextUser;
            }
            DB::commit();
        } catch (\Exception $ex) {
            DB::rollBack();
        }
    }


    function findAllChildren(User $user, &$result = [])
    {

        if (!$user) {
            return $result;
        }
        $children = UserTree::where('parent_user_id', $user->id)->get();
        foreach ($children as $child){
            $result[] = $child->child;
            if($child->child){
                $result = array_merge($result, $this->findAllChildren($child->child));
            }
        }
        return $result;
    }
}
