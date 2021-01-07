<?php


namespace App\Services;


use App\Models\UserTree;

class UserTreeService
{

    function getTreeById($userId, $limitLevel = 5){
        return $this->getChildren($userId,$limitLevel);
    }

    /**
     * @param $userId
     * @param $maxLevel
     * @param int $level
     * @return array
     */
    function getChildren($userId, $maxLevel,  &$level=0)
    {
        $userIds = UserTree::where('parent_user_id', $userId)->get();
        $array[$userId] = $userIds;
        if($level ==  $maxLevel){
            return $userIds;
        }
        foreach ($userIds as $userId){
            $array[$userId->child_user_id]= $this->getChildren($userId->child_user_id, $maxLevel)[$userId->child_user_id];
        }

        $level++;
        return $array;
    }
}
