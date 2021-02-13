<?php

namespace App\Jobs;

use App\Models\UserLevelHistory;
use App\Services\UserService;
use Carbon\Carbon;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
class UpdateLevelJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    private $userService;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->userService = new UserService();
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $users = $this->userService->getAll();
        foreach ($users as $user) {
            //Set Timezone
            $timezone = $user->timezone;
            if($timezone){
                config('app.timezone', $timezone);
                date_default_timezone_set($timezone);
            }
            $profile = $this->userService->getProfile($user->id);
            $daysToComplete = $this->userService->getDayToCompleteLevel($profile->requirement);
            $now = Carbon::now();
            $userEndDate = $user->level_last_updated_at ? $user->level_last_updated_at : $user->created_at;
            $endDate = $userEndDate->addDays($daysToComplete);
            if ($endDate->toDateString() == $now->toDateString()) {
                if ($profile->goal_achieved >= $profile->requirement->required_period) {
                    (new UserLevelHistory())->forceFill([
                        'user_id' => $user->id,
                        'steps' => $profile->total_steps_this_week,
                        'goal' => $profile->steps_required_in_cycle,
                        'level' => $user->level,
                        'last_level' => $user->last_level - 1
                    ])->save();
                    //UpgradeLevel
                    $this->userService->upgradeLevel($user);
                    Log::debug("Level Upgraded" . " of User " . Auth::id());


                } else if($profile->minimum_achieved >= $profile->requirement->minimum_period){
                    $this->userService->updateLastLevelUpdate($user);
                    Log::debug("Level Maintained" . " of User " . Auth::id());

                }else{
                    //Down grade level
                    if($user->level > 1){
                        (new UserLevelHistory())->forceFill([
                            'user_id' => $user->id,
                            'steps' => $profile->total_steps_this_week,
                            'goal' => $profile->steps_required_in_cycle,
                            'level' => $user->level,
                            'last_level' => $user->last_level + 1
                        ])->save();
                    }
                    $this->userService->downgradeLevel($user);
                    Log::debug("Level Downgraded " . " of User " . Auth::id());

                }
            }
            dd("do nothing level");

        }
    }
}
