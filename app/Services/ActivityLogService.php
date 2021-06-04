<?php


namespace App\Services;


use App\Exceptions\GeneralException;
use App\Models\ActivityLog;
use App\Repositories\UserActivityRepository;
use Carbon\Carbon;

class ActivityLogService
{
    private $activities = ['steps'];

    private $activityLogRepo;

    public function __construct()
    {
        $this->activityLogRepo  =new UserActivityRepository();
    }

    function log($userId, $activity, $value, $date = null)
    {
        $value = (int) $value;
        if (!in_array($activity, $this->activities)) {
            throw  new GeneralException(__('activity.errors.invalid_activity', $activity));
        }
        $dateObj = Carbon::now();
        try {
            if($date){
                $dateObj = Carbon::createFromFormat('Y-m-d H:i:s', $date);
            }
        } catch (\Exception $exception) {
            throw new GeneralException(__('activity.errors.invalid_date'));
        }
        $lastLog = $this->activityLogRepo->getLastEntryOfDate($userId, $dateObj);
        $offset = 0;
        if ($lastLog) {
            $lastLog->value  = $value;
            $lastLog->save();
            return $lastLog;
        }else{
            return $this->activityLogRepo->create($userId, $activity, $value, $offset);
        }

    }

    function getLastEntry($userId){
        return $this->activityLogRepo->getLastEntryOfDate($userId, Carbon::now());
    }


}
