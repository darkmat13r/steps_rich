<?php


namespace App\Services;


use App\Exceptions\GeneralException;
use App\Models\ActivityLog;
use App\Models\LevelRequirement;
use App\Models\User;
use App\Repositories\LevelRequirementRepository;
use App\Repositories\UserActivityRepository;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Request;

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
        $daysOffset = $daysDiffFromAccountCreation % 7 + 1;
        $weeklySteps = [];

        for ($i = 0; $i < 7; $i++) {
            $startDate = Carbon::now()->subDays($daysOffset - $i);
            $daySteps = $this->userActivityRepo->getSumByDate($userId, $startDate->format('Y-m-d'));
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
        $user->completed = $this->getCycleStats($user, $user->requirement);
        $user->steps_required_in_cycle = $user->requirement->required_period * $user->requirement->required_steps;
        $user->minimum_steps_required_in_cycle = $user->requirement->minimum_period * $user->requirement->minimum_steps;
        return $user;
    }

    function caloriesBurnt($user, $steps)
    {

    }

    function getCycleStats(User $user, LevelRequirement $requirement)
    {

        $startDate = isset($user->level_last_updated_at) && !is_null($user->level_last_updated_at) ? $user->level_last_updated_at : $user->created_at;
        $firstCycleStartedAt = $user->first_cycle_started_at;
        $daysToCompleteLevel = 0;
        if ($requirement->required_repeat_interval == "week") {
            $daysToCompleteLevel = 7 * $requirement->required_repeat;
        } else {
            $daysToCompleteLevel = $requirement->required_repeat;
        }
        $cycle = $requirement->required_cycle;
        $data = [];
        $currentCycle = 0;
        $lastCycleAchieved = false;
        $dayRemaining = 7 - Carbon::now()->dayOfWeek - $user->created_at->dayOfWeek;
        while (Carbon::now()->greaterThanOrEqualTo($startDate)) {
            $achieved = 0;
            $cycleStepsCount = 0;
            for ($i = 0; $i < $daysToCompleteLevel; $i++) {
                $count = $this->userActivityRepo->getSumByDate($user->id, $startDate->toDateString());
                $cycleStepsCount += $count;
                if ($count >= $requirement->required_steps) {
                    $achieved++;
                }
                $startDate = $startDate->addDays(1);
            }
            if ($achieved >= $requirement->required_repeat) {
                $data[] = $requirement->required_steps * $cycle;
                $lastCycleAchieved = true;
            } else if ($lastCycleAchieved) {
                $data[] = min($cycleStepsCount, $requirement->required_steps * $cycle);
            }
        }

        if (!$lastCycleAchieved) {

            $startDate = Carbon::now()->subDays($dayRemaining)->toDateString();
            $steps = $this->userActivityRepo->getSumByDate($user->id, $startDate, Carbon::now()->toDateString());
            $data[] = (int)$steps;
        }
        for ($i = 0; $i <= $cycle - count($data); $i++) {
            $data[] = 0;
        }
        /*  for ($i = 0; $i < $cycle; $i++) {

              $endDate = $user->created_at->addDays(($i + 1) * 7);
              $data[] = $this->userActivityRepo->getSumByDate($user->id, $startDate->format('Y-m-d'), $endDate->format('Y-m-d'));
              $startDate = $endDate->addDays(1);
          }*/

        return $data;
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

}
