<?php


namespace App\Repositories;


use App\Models\ActivityLog;
use Carbon\Carbon;

class UserActivityRepository
{


    function getSumByDate($userId, $date, $date2 = null)
    {
        $steps = $this->getLastEntryOfDate($userId, Carbon::createFromFormat('Y-m-d',  $date));
        if($steps){
            return $steps->value;
        }
        return 0;
    }
    function getOffsetByDate($userId, $date, $date2 = null)
    {
        if (!$date2)
            return ActivityLog::where('user_id', $userId)->whereDate('created_at', $date)->groupBy('created_at')->sum('offset');
        return ActivityLog::where('user_id', $userId)->whereDate('created_at', '>=', $date)->whereDate('created_at', '<=', $date2)->sum('offset');
    }

    function create($userId,$activity, $value, $offset = 0, $date= null){
        $log = ActivityLog::updateOrCreate([
          'created_at' => Carbon::now()->toDateTimeString()
        ],[
            'type' => $activity,
            'value' => $value,
            'user_id' => $userId,
            'offset' => $offset,
        ]);
        $log->save();
        return $log;
    }

    public function getLastEntryOfDate($userId, Carbon $dateObj)
    {
       return ActivityLog::where('user_id', $userId)->whereDate('created_at', $dateObj->toDateString())->orderBy('id', 'DESC')->first();
    }
}
