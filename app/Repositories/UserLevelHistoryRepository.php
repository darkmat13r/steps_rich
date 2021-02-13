<?php


namespace App\Repositories;


use App\Models\UserLevelHistory;

class UserLevelHistoryRepository
{


    function getAll($userId){
        return UserLevelHistory::where('user_id', $userId)->orderBy('created_at', 'desc')->get();
    }

}
