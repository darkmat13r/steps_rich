<?php


namespace App\Services\Payment;

use Srmklive\PayPal\Facades\PayPal;
use Srmklive\PayPal\Services\PayPal as PayPalClient;

class PaypalPaymentGateway implements PaymentGateway
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
        $this->provider->setAccessToken($this->provider->getAccessToken());

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

    function verify($orderId)
    {
       return $this->provider->capturePaymentOrder($orderId);
    }
}
