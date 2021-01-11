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
        $lastLog = ActivityLog::where('user_id', $userId)->orderBy('id', 'DESC')->first();
        $newValue = $value;
        try {
            $dateObj = Carbon::createFromFormat('Y-m-d H:i:s', $date);
        } catch (\Exception $exception) {
            throw new GeneralException(__('activity.errors.invalid_date'));
        }
        if ($lastLog) {
            if ($dateObj->shiftTimezone('UTC')->lessThanOrEqualTo($lastLog->created_at)) {
                throw new GeneralException(__('activity.errors.invalid_data'));
            }
            $lastSum  =  $this->activityLogRepo->getSumByDate($userId, $dateObj->format('Y-m-d'));
            $newValue = $value - $lastSum;
            if ($newValue < 0) {
                $newValue = $value;
            }
            if ($newValue === 0) {
                return $lastLog;
            }
        }
        $log = (new ActivityLog())->forceFill([
            'type' => $activity,
            'value' => $newValue,
            'user_id' => $userId,
            'created_at' => !is_null($date) ? $date : Carbon::now()->toDateString()
        ]);
        $log->save();

        return $log;
    }
}
