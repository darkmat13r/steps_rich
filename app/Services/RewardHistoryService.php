<?php


namespace App\Services;


use App\Models\UserTree;
use App\Repositories\RewardHistoryRepository;
use App\Repositories\UserTreeRepository;

class RewardHistoryService
{

    private $rewardHistoryRepo;
    private $treeRepo;

    public function __construct()
    {
        $this->rewardHistoryRepo = new RewardHistoryRepository();
        $this->treeRepo = new UserTreeRepository();
    }

    function getDownlineGrowth($userId)
    {
        $childs = $this->getDownline($userId);
        $growth = count($childs);
        $acheived = 0;
        foreach ($childs as $child) {
            if($child->child){
                $rewards = $this->rewardHistoryRepo->getRewards($child->child);
                if (count($rewards) > 0) {
                    $acheived++;
                }
            }
        }
        return [
            'growth' => $growth,
            'achieved' => $acheived
        ];
    }

    private function getDownline($userId)
    {
        return $this->treeRepo->getChilds($userId);
    }

    function getActiveAcheivedGrowth($userId)
    {
        $childUsers = UserTree::where('parent_user_id', $userId)->get();
        $downlineUsers = [];

        foreach ($childUsers as $child) {
            if($child->child){
                $rewards = $this->rewardHistoryRepo->getRewards($child->child);
                if (count($rewards) > 0) {
                    $downlineUsers[] = $child;
                }
            }
        }
        return $downlineUsers;
    }

    function getActiveGrowth($userId)
    {
        $childUsers = UserTree::where('parent_user_id', $userId)->get();
        $downlineUsers = [];
        foreach ($childUsers as $child) {
            $downlineUsers[] = $child;
        }
        return $downlineUsers;
    }


}
