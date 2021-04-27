<?php

namespace App\Jobs;

use App\Models\PayoutBatchRequest;
use App\Models\PayoutRequest;
use App\Models\Transaction;
use App\Repositories\BankAccountRepository;
use App\Services\Payment\BatchPayoutRequest;
use App\Services\Payment\PaymentGatewayFactory;
use App\Services\Payment\PayoutReceiverBuilder;
use App\Services\PayoutService;
use App\Services\UserService;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class SendPayoutsJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;


    private $payoutService;
    private $userService;
    private $bankAccountRepo;

    /**
     * PaymentController constructor.
     */
    public function __construct()
    {
        $this->payoutService = new PayoutService();
    }


    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $this->payoutService->sendPayouts();

    }
}
