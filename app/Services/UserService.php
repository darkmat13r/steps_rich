<?php


namespace App\Services;


use App\Exceptions\GeneralException;
use App\Models\ActivityLog;
use App\Models\User;
use App\Repositories\LevelRequirementRepository;
use App\Repositories\UserActivityRepository;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class UserService
{

    static $activityLevels = ['active', 'moderate', 'inactive'];

    private $userActivityRepo;
    private $levelRequirementRepo;

    public function __construct()
    {
        $this->userActivityRepo = new UserActivityRepository();
        $this->levelRequirementRepo = new LevelRequirementRepository();
    }

    function getProfile($userId){
        $user = User::find($userId);
        if(!$user){
            throw new GeneralException('user.errors.user_not_found', 404);
        }
        $dailySteps = $this->userActivityRepo->getSumByDate($userId, Carbon::now()->format('Y-m-d'));

        $user->daily_steps = (int)$dailySteps;
        //
        $weekNumber = Carbon::now()->dayOfWeek;
        $weeklySteps = [];
        for($i=0;$i< 7;$i++){
            $startDate = Carbon::now()->subDays($weekNumber -  $i);
            $daySteps = $this->userActivityRepo->getSumByDate($userId, $startDate->format('Y-m-d'));
            $weeklySteps[$i] = (int)  $daySteps;
        }
        $user->weekly_stats = $weeklySteps;
        $user->requirement = $this->levelRequirementRepo->getRequirement($user);
        return $user;
    }

    function updateProfile($userId, $params  = []){
       $user = User::find($userId);
       $fillables  = $user->getFillable();
       DB::beginTransaction();
       foreach ($params as $key  => $param){
           if(in_array($key, $fillables) && $param){
               if($key == 'activity_level' && !in_array($param, self::$activityLevels)){
                   DB::rollBack();
                   throw new GeneralException(__('user.errors.invalid_activity_level'));
               }
               $user->{$key} = $param;
           }
       }
       $user->save();
       DB::commit();
       return $user;
    }

}
