<?php


namespace App\Services\Payment;

use Carbon\Carbon;
use Srmklive\PayPal\Facades\PayPal;
use Srmklive\PayPal\Services\PayPal as PayPalClient;
use Srmklive\PayPal\Traits\PayPalHttpClient;
use Srmklive\PayPal\Traits\PayPalRequest;

class PaypalPaymentGateway  implements PaymentGateway
{
    private $provider;

    public function __construct()
    {
        $this->init();
    }

    function init()
    {
        $this->provider = PayPal::setProvider();
        $this->provider->setApiCredentials(config('paypal'));
        $this->provider->getAccessToken();

    }

    function createOrder(OrderRequest $request)
    {
        return $this->provider->createOrder([
            "intent" => "CAPTURE",
            "purchase_units" => [
                0 => [
                    "amount" => [
                        "currency_code" => $request->getCurrency(),
                        "value" => $request->getAmount()
                    ]
                ]
            ]
        ]);
    }

    function sendPayout(BatchPayoutRequest $request){
        $batchId  = Carbon::now()->timestamp;
        $items = $request->getPayoutReceivers();
        $data = [
            'sender_batch_header' =>[
                'sender_batch_id' => $batchId,
                'email_subject' => $request->getEmailSubject(),
                'email_message' => $request->getEmailMessage()
            ],
            'items' => $items
        ];
        $response = $this->provider->sendPayouts($data);
        return $response;
    }

    function verify($orderId)
    {
       return $this->provider->capturePaymentOrder($orderId);
    }

}
