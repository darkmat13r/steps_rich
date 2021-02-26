<?php


namespace App\Services;


use App\Exceptions\GeneralException;
use App\Models\ActivityLog;
use App\Models\LevelRequirement;
use App\Models\User;
use App\Repositories\LevelRequirementRepository;
use App\Repositories\UserActivityRepository;
use App\Repositories\UserRepository;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Request;

class UserService
{

    static $activityLevels = ['active', 'moderate', 'inactive'];

    private $userActivityRepo;
    private $levelRequirementRepo;
    private $userRepo;

    public function __construct()
    {
        $this->userActivityRepo = new UserActivityRepository();
        $this->levelRequirementRepo = new LevelRequirementRepository();
        $this->userRepo = new UserRepository();
    }

    function getProfile($userId)
    {
        $user = User::find($userId);
        $user->healthConditions;
        if (!$user) {
            throw new GeneralException('user.errors.user_not_found', 404);
        }
        $user->requirement = $this->levelRequirementRepo->getRequirement($user);

        if (!$user->requirement) {
            throw new GeneralException('user.errors.not_eligible');
        }
        $daysToCompleteLevel = $this->getDayToCompleteLevel($user->requirement);
        $currentDate = Carbon::now()->toDateString();
        $dailySteps = $this->userActivityRepo->getSumByDate($userId, $currentDate);

        $user->daily_steps = (int)$dailySteps;
        $user->daily_steps_date = $currentDate;

        $checkFrom = $user->level_last_updated_at ? $user->level_last_updated_at : $user->created_at;
        $checkFrom = Carbon::createFromFormat('Y-m-d', $checkFrom->toDateString());

        $daysDiffFromAccountCreation = $checkFrom->diffInDays(null , false);


        $user->days_to_complete = $daysToCompleteLevel;
        $user->days_from_last_update = $daysDiffFromAccountCreation;
        $user->next_level_days_left = $daysToCompleteLevel - $daysDiffFromAccountCreation;

        try {
            $achieved = $this->achievedGoals($user, $user->requirement);
        } catch (\Exception $exception) {
           // dd($exception->getTraceAsString());
        }
        $user->completed = $achieved['stats'];
        $user->weekly_stats = $achieved['weekly_steps'];
        $user->steps_required_in_cycle = $user->requirement->required_period * $user->requirement->required_steps;
        $user->minimum_steps_required_in_cycle = $user->requirement->minimum_period * $user->requirement->minimum_steps;

        $user->goal_achieved = $achieved['achieved'];
        $user->minimum_goal_achieved = $achieved['minimum_achieved'];
        $user->total_steps_this_week = $achieved['steps'];
        return $user;
    }


    function getDayToCompleteLevel(LevelRequirement $requirement)
    {
        $cycle = $requirement->required_cycle;
        $daysToCompleteLevel = $cycle * $requirement->required_repeat;
        if ($requirement->required_repeat_interval == "week") {
            $daysToCompleteLevel = $daysToCompleteLevel * 7;
        }
        return $daysToCompleteLevel;
    }


    function achievedGoals(User $user, LevelRequirement $requirement)
    {
        $daysToCompleteLevel = $this->getDayToCompleteLevel($requirement);
        $checkFrom = $user->level_last_updated_at ? $user->level_last_updated_at : $user->created_at;
        $checkFrom = Carbon::createFromFormat('Y-m-d', $checkFrom->toDateString());

        $daysDiffFromAccountCreation = $checkFrom->diffInDays(Carbon::now());

        $daysLeft = $daysToCompleteLevel - $daysDiffFromAccountCreation % $daysToCompleteLevel;

        $startDate = $checkFrom->setHour(0)->setMinute(0)->setSecond(0);
        $achieved = 0;
        $minAchieved = 0;
        $totalStepsThisWeek = 0;
        $now = Carbon::now()->setHour(0)->setMinute(0)->setSecond(0);
        $data = [];
        $weeklySteps = [];
        while ($now->greaterThanOrEqualTo($startDate)) {
            $count = $this->userActivityRepo->getSumByDate($user->id, $startDate->toDateString());
            $stepsTaken = (int)$count;
            $totalStepsThisWeek += $stepsTaken;
            $isToday = $now->toDateTimeString() == $startDate->toDateTimeString();
            if ($count >= $requirement->required_steps) {
                $achieved++;
                $data[] = $stepsTaken;
            } else if ($isToday) {
                $data[] = $stepsTaken;
            }
            if ($count >= $requirement->minimum_steps) {
                $minAchieved++;

            }


            if ($achieved == $requirement->required_period) {
                break;
            }
            $startDate = $startDate->addDays(1);
        }
        $checkFrom = $user->level_last_updated_at ? $user->level_last_updated_at : $user->created_at;
        $checkFrom = Carbon::createFromFormat('Y-m-d', $checkFrom->toDateString());

        $startDate = $checkFrom;

        $i  = 0;
        while ($i < $daysToCompleteLevel ) {
            $count = $this->userActivityRepo->getSumByDate($user->id, $startDate->toDateString());
            $stepsTaken = (int)$count;
            $weeklySteps[] = [
                'name' => $startDate->format('D'),
                'value' => (int)$stepsTaken];
           $startDate->addDays(1);
           $i++;
        }

        /* $count = $this->userActivityRepo->getSumByDate($user->id, Carbon::now()->toDateString());
         $totalStepsThisWeek += $count;
         if ($count >= $requirement->required_steps) {
             $achieved++;
         }
         $data[] = (int)min($count, $requirement->required_steps);*/
        $remaining = $requirement->required_period - count($data);
        for ($i = 0; $i < $remaining; $i++) {
            $data[] = 0;
        }

        return [
            'achieved' => min($requirement->required_period, $achieved),
            'minimum_achieved' => min($requirement->minimum_period, $minAchieved),
            'steps' => $totalStepsThisWeek,
            'stats' => $data,
            'weekly_steps' => $weeklySteps
        ];
    }


    function updateProfile($userId, $params = [])
    {
        $user = User::find($userId);
        $fillables = $user->getFillable();
        DB::beginTransaction();
        foreach ($params as $key => $param) {
            if (in_array($key, $fillables) && $param) {
                if ($key == 'activity_level' && !in_array($param, self::$activityLevels)) {
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

    public function getAll()
    {
        return $this->userRepo->getAll();
    }

    public function upgradeLevel(User $user)
    {
        $user->level += 1;
        $user->level_last_updated_at = Carbon::now()->toDateTimeString();
        $user->save();
    }

    public function downgradeLevel(User $user)
    {
        if ($user->level > 1) {
            $user->level -= 1;
        }
        $user->level_last_updated_at = Carbon::now()->toDateTimeString();
        $user->save();

    }

    public function updateLastLevelUpdate(User $user)
    {
        $user->level_last_updated_at = Carbon::now()->toDateTimeString();
        $user->save();
    }

}
