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
        if (!$user) {
            throw new GeneralException('user.errors.user_not_found', 404);
        }
        $dailySteps = $this->userActivityRepo->getSumByDate($userId, Carbon::now()->format('Y-m-d'));

        $user->daily_steps = (int)$dailySteps;
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

    function getCycleStats(User $user, LevelRequirement $requirement)
    {
        $cycle = $requirement->required_cycle;
        $daysToCompleteLevel = 0;
        if ($requirement->required_repeat_interval == "week") {
            $daysToCompleteLevel = $cycle * 7 * $requirement->required_repeat;
        }
        $startDate = $user->created_at;
        $data = [];
        for ($i = 0; $i < $cycle; $i++) {
            $endDate = $user->created_at->addDays(($i + 1) * 7);
            $data[] = $this->userActivityRepo->getSumByDate($user->id, $startDate->format('Y-m-d'), $endDate->format('Y-m-d'));
            $startDate = $endDate->addDays(1);
        }

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
