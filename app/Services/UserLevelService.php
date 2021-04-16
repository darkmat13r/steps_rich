<?php


namespace App\Services;


use App\Models\User;

class UserLevelService
{

    function payUpline(User $user){
        $currentUserLevel = $user->level;

    }

    function hasEarnedOwnReward(User $user){


    }
}
