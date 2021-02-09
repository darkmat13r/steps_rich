<?php

namespace App\Jobs;

use App\Services\UserService;
use Carbon\Carbon;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

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
        foreach ($users as $user){
            $profile  = $this->userService->getProfile($user->id);
            $daysToComplete  = $this->userService->getDayToCompleteLevel($profile->requirement);
            $now = Carbon::now();
            $userEndDate = $user->level_last_updated_at ?  $user->level_last_updated_at : $user->created_at;

            $endDate = $userEndDate->addDays($daysToComplete);
            if($endDate->toDateString() == $now->toDateString()){
                if($profile->goal_achieved >= $profile->requirement->required_period){
                    //UpgradeLevel
                    $this->userService->upgradeLevel($user);
                }else {
                    //Down grade level
                    $this->userService->downgradeLevel($user);
                }
            }
        }
    }
}
