<?php

namespace App\Listeners;

use App\Events\RewardAdded;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class OnRewardAdded
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle(RewardAdded  $event)
    {
        //DO reward thing here
        $reward = $event->reward;
    }
}
