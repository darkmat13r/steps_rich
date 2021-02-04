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
        $dailySteps = $this->userActivityRepo->getSumByDate($userId, Carbon::now()->format('Y-m-d'));

        $user->daily_steps = (int)$dailySteps;
        $user->daily_steps_date = Carbon::now()->toDateTimeString();

        $daysDiffFromAccountCreation = $user->created_at->diffInDays(Carbon::now());
        $daysOffset = $daysDiffFromAccountCreation % 7;
        $weeklySteps = [];

        for ($i = 0; $i < 7; $i++) {
            $startDate = Carbon::now()->subDays($daysOffset - $i);
            $daySteps = $this->userActivityRepo->getSumByDate($userId, $startDate->toDateString());
            $weeklySteps[] = [
                'name' => $startDate->format('D'),
                'value' => (int)$daySteps];
        }
        $user->requirement = $this->levelRequirementRepo->getRequirement($user);
        $cycle = $user->requirement->required_cycle;
        $daysToCompleteLevel = 0;
        if ($user->requirement->required_repeat_interval == "week") {
            $daysToCompleteLevel = $cycle * 7 * $user->requirement->required_repeat;
        }
        $user->next_level_days_left = $daysToCompleteLevel - $daysDiffFromAccountCreation % $daysToCompleteLevel;
        $user->weekly_stats = $weeklySteps;
        $achieved = $this->achievedGoals($user, $user->requirement);
        $user->completed = $achieved['stats'];
        $user->steps_required_in_cycle = $user->requirement->required_period * $user->requirement->required_steps;
        $user->minimum_steps_required_in_cycle = $user->requirement->minimum_period * $user->requirement->minimum_steps;

        $user->goal_achieved = $achieved['achieved'];
        $user->total_steps_this_week = min($achieved['steps'], $user->steps_required_in_cycle);
        return $user;
    }

    function caloriesBurnt($user, $steps)
    {

    }

    function minimumAchievedGoals(User $user, LevelRequirement $requirement)
    {
        $startDayOfWeek = $user->created_at->dayOfWeek;
        $dayRemaining = Carbon::now()->dayOfWeek - $startDayOfWeek;
        $startDate = Carbon::now()->subDays($dayRemaining);
        $achieved = 0;
        $totalStepsThisWeek = 0;
        while (Carbon::now()->greaterThanOrEqualTo($startDate)) {
            $count = $this->userActivityRepo->getSumByDate($user->id, $startDate->toDateString());
            $totalStepsThisWeek += $count;
            if ($count >= $requirement->minimum_steps) {
                $achieved++;
            }

            $startDate = $startDate->addDays(1);
        }

        return [
            'achieved' => min($requirement->minimum_period, $achieved),
            'steps' => $totalStepsThisWeek
        ];
    }

    function achievedGoals(User $user, LevelRequirement $requirement)
    {
        $startDayOfWeek = $user->created_at->dayOfWeek;
        $dayRemaining = Carbon::now()->dayOfWeek - $startDayOfWeek;
        $startDate = Carbon::now()->subDays($dayRemaining)->setHour(0)->setMinute(0)->setSecond(0);
        $achieved = 0;
        $totalStepsThisWeek = 0;
        $now = Carbon::now()->setHour(0)->setMinute(0)->setSecond(0);
        while ($now->greaterThanOrEqualTo($startDate)) {
            $count = $this->userActivityRepo->getSumByDate($user->id, $startDate->toDateString());
            if ($count >= $requirement->required_steps) {
                $achieved++;
                // $stepsTaken = (int)min($count, $requirement->required_steps);
                $stepsTaken = (int)$count;
                $totalStepsThisWeek += $stepsTaken;
                $data[] = $stepsTaken;
            } else if ($now->toDateTimeString() == $startDate->toDateTimeString()) {

                $stepsTaken = (int)$count;
                $totalStepsThisWeek += $stepsTaken;
                $data[] = $stepsTaken;
            }
            if ($achieved == $requirement->required_period) {
                break;
            }
            $startDate = $startDate->addDays(1);
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
            'steps' => $totalStepsThisWeek,
            'stats' => $data
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
        $user->save();
    }

    public function downgradeLevel(User $user)
    {
        if ($user->level > 1) {
            $user->level -= 1;
            $user->save();
        }
    }

}
