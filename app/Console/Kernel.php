<?php

namespace App\Console;

use App\Jobs\SendPayoutsJob;
use App\Jobs\UpdateLevelJob;
use App\Jobs\VerifyPendingPayouts;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;
use Illuminate\Support\Facades\Log;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        //
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {

         $schedule->job(new UpdateLevelJob())->everyFifteenMinutes()->timezone('Asia/Kuala_Lumpur');
         $schedule->job(new SendPayoutsJob())->monthly()->timezone('Asia/Kuala_Lumpur');
         $schedule->job(new VerifyPendingPayouts())->everyTwoHours()->timezone('Asia/Kuala_Lumpur');
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
