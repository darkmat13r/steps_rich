<?php


namespace App\Services;


use App\Exceptions\GeneralException;
use App\Models\PayoutBatchRequest;
use App\Models\PayoutRequest;
use App\Models\Transaction;
use App\Repositories\BankAccountRepository;
use App\Services\Payment\BatchPayoutRequest;
use App\Services\Payment\PaymentGatewayFactory;
use App\Services\Payment\PayoutReceiverBuilder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class PayoutService
{
    private $paymentGateway;
    private $userService;
    private $bankAccountRepo;

    /**
     * PaymentController constructor.
     */
    public function __construct()
    {
        $this->paymentGateway = PaymentGatewayFactory::create(config('payment.provider'));
        $this->userService = new UserService();
        $this->bankAccountRepo = new BankAccountRepository();
    }


    /**
     *
     * @return void
     */
    public function sendPayouts()
    {
        try{
            Log::info("========================> Payout Start  <========================");
            DB::beginTransaction();
            $payoutRequest = $this->buildPayoutRequest();

            if (count($payoutRequest->getPayoutReceivers()) > 0) {
                $request = $this->paymentGateway->sendPayout($payoutRequest);
                $batchId = $request->batch_header->payout_batch_id;
                Log::info("============== Payout Response ============");
                Log::info(json_encode($request));
                Log::info("============== Payout Response End============");
                PayoutBatchRequest::updateOrCreate([
                    'batch_id' => $batchId
                ], [
                    'batch_id' => $batchId,
                    'batch_response' => json_encode($request),
                    'data' => json_encode([])
                ]);
                $this->verifyAndUpdateStatus($batchId,$payoutRequest->getPayoutReceivers());
            }
            DB::commit();
        }catch (\Exception $exception){
            DB::rollBack();
            Log::info("========================> Payout Failed  <========================");
            Log::error($exception->getTraceAsString());
            throw new GeneralException("Payout Failed");
        }
        Log::info("========================> Payout Completed  <========================");
    }

    private function verifyAndUpdateStatus($batchId, $data){
        $payoutStatus = $this->paymentGateway->verifyPayout($batchId);
        Log::info("============== Payout Verify Response ============");
        Log::info(json_encode($payoutStatus));
        Log::info("============== Payout Verify Response End============");
        $batch = PayoutBatchRequest::updateOrCreate([
            'batch_id' => $batchId
        ], [
            'batch_id' => $batchId,
            'batch_response' => json_encode($payoutStatus),
            'data' => json_encode($data)
        ]);
        $batch->save();
        $items = $payoutStatus->items;
        foreach ($items as $item) {
            $this->createPayoutRequestEntry($batchId, $item);
            if ($item->transaction_status == 'SUCCESS') {
               $this->debitWalletAmount($item->payout_item->sender_item_id);
            }
        }
    }

    private function createPayoutRequestEntry($batchId,$item){
        PayoutRequest::updateOrCreate([
            'header_batch_id' => $batchId,
            'batch_id' => $item->payout_batch_id,
        ], [
            'header_batch_id' => $batchId,
            'batch_id' => $item->payout_batch_id,
            'status' => $item->transaction_status,
            'amount' => $item->payout_item->amount->value,
            'currency' => $item->payout_item->amount->currency,
            'email' => $item->payout_item->receiver,
            'response' => json_encode($item),
            'bank_account_id' => $item->payout_item->sender_item_id,
        ]);
    }

    private function debitWalletAmount($bankId){
        $bankAccount = $this->bankAccountRepo->getById($bankId);
        Log::info("======================> Bank Id ${$bankId} <-====================");
        Log::info(json_encode($bankAccount));
        if ($bankAccount) {
            $user = $bankAccount->user;
            if ($user) {
                $user->wallet_amount = 0;
               $transaction =  (new Transaction())->forceFill([
                    'user_id' => $user->id,
                    'amount' => $user->wallet_amount,
                    'bank_account_id' => $bankAccount->id, 'via' => 'paypal'
                ]);
               dd($transaction);
               $transaction->save();
                $user->save();
            }
        }
    }

    private function buildPayoutRequest(){
        $users = $this->userService->getPendingPayouts();
        $payoutRequest = new BatchPayoutRequest();
        $payoutRequest->setEmailSubject("You have a payout");
        $payoutRequest->setEmailMessage("You have received a payout!");
        foreach ($users as $user) {
            $bankAccount = $this->bankAccountRepo->getBankAccount($user->id);
            if ($bankAccount) {
                $builder = new PayoutReceiverBuilder();
                $builder->setAmount($user->wallet_amount);
                $builder->setCurrency('USD')
                    ->setReceiver($bankAccount->account_number)
                    ->setNote('Thanks for your support')
                    ->setSenderItemId($bankAccount->id);
                $payoutRequest->addPayoutReceiver($builder);
            }
        }
        return $payoutRequest;
    }
}
