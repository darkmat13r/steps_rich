<?php

namespace App\Providers;

use App\Events\LevelUpdated;
use App\Events\LevelUpgraded;
use App\Events\RewardAdded;
use App\Listeners\OnLevelUpgraded;
use App\Listeners\OnRewardAdded;
use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],

        LevelUpgraded::class =>[
            OnLevelUpgraded::class
        ],
        RewardAdded::class =>[
            OnRewardAdded::class
        ]
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
