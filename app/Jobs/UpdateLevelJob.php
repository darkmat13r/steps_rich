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
            $now = Carbon::now();
            $userEndWeekNo = $user->created_at->dayOfWeek - 1;
            if($userEndWeekNo < 0){
                $userEndWeekNo = 6;
            }
            if($now->dayOfWeek == $userEndWeekNo){
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
