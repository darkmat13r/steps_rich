<?php


namespace App\Repositories;


use App\Models\UserLevelHistory;

class UserLevelHistoryRepository
{


    function getAll($userId){
        return UserLevelHistory::where('user_id', $userId)->where('level', '>', 0)->orderBy('created_at', 'desc')->get();
    }

}
