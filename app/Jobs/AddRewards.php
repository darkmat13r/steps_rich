<?php

namespace App\Jobs;

use App\Models\User;
use App\Services\UserRewardService;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class AddRewards implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    private  $user;
    private $rewardService;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct(User  $user)
    {
        //
        $this->user = $user;
        $this->rewardService = new UserRewardService();

    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $this->rewardService->addRewards($this->user);
    }
}
