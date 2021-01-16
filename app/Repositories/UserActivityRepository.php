<?php


namespace App\Repositories;


use App\Models\ActivityLog;
use Carbon\Carbon;

class UserActivityRepository
{


    function getSumByDate($userId, $date, $date2 = null)
    {
        if (!$date2)
            return ActivityLog::where('user_id', $userId)->whereDate('created_at', $date)->sum('value');
        return ActivityLog::where('user_id', $userId)->whereDate('created_at', '>=', $date)->whereDate('created_at', '<=', $date2)->sum('value');
    }
}
