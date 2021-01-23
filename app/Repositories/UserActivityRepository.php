<?php


namespace App\Repositories;


use App\Models\ActivityLog;
use Carbon\Carbon;

class UserActivityRepository
{


    function getSumByDate($userId, $date, $date2 = null)
    {
        if (!$date2)
            return ActivityLog::where('user_id', $userId)->whereDate('created_at', $date)->groupBy('created_at')->sum('value');
        return ActivityLog::where('user_id', $userId)->whereDate('created_at', '>=', $date)->whereDate('created_at', '<=', $date2)->groupBy('created_at')->sum('value');
    }
    function getOffsetByDate($userId, $date, $date2 = null)
    {
        if (!$date2)
            return ActivityLog::where('user_id', $userId)->whereDate('created_at', $date)->groupBy('created_at')->sum('offset');
        return ActivityLog::where('user_id', $userId)->whereDate('created_at', '>=', $date)->whereDate('created_at', '<=', $date2)->groupBy('created_at')->sum('offset');
    }

    function create($userId,$activity, $value, $offset = 0, $date= null){
        $log = (new ActivityLog())->forceFill([
            'type' => $activity,
            'value' => $value,
            'user_id' => $userId,
            'offset' => $offset,
            'created_at' => !is_null($date) ? $date : Carbon::now()->toDateTimeString()
        ]);
        $log->save();
        return $log;
    }

    public function getLastEntryOfDate($userId, Carbon $dateObj)
    {
       return ActivityLog::where('user_id', $userId)->whereDate('created_at', $dateObj->format('Y-m-d'))->orderBy('id', 'DESC')->first();
    }
}
