<?php


namespace App\Services;


use App\Exceptions\GeneralException;
use App\Models\ActivityLog;
use Carbon\Carbon;

class ActivityLogService
{
    private $activities = ['steps'];

    function log($userId,$activity, $value, $date=null){
        if(!in_array($activity, $this->activities)){
            throw  new GeneralException(__('activity.errors.invalid_activity', $activity));
        }
        $lastLog = ActivityLog::where('user_id', $userId)->orderBy('id', 'DESC')->first();
        $newValue =  $value;
        if($lastLog){
           $newValue =  $value  -  $lastLog->value;
           if($newValue  < 0){
               $newValue = $value;
           }
           if($newValue === 0 ){
               return $lastLog;
           }
        }
        $log = (new ActivityLog())->forceFill([
            'type' =>  $activity,
            'value' => $newValue,
            'user_id' => $userId,
            'created_at' => !is_null($date) ? $date : Carbon::now()->toDateString()
        ]);
        $log->save();
        return $log;
    }
}
