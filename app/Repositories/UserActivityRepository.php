<?php


namespace App\Repositories;


use App\Models\ActivityLog;
use Carbon\Carbon;

class UserActivityRepository
{

    function getSumByDate($userId , $date){
       return  ActivityLog::where('user_id', $userId)->whereDate('created_at', $date)->sum('value');
    }

}
