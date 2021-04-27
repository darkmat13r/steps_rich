<?php


namespace App\Services\Payment;


class PaymentGatewayFactory
{


    public static function create($paymentGateway): PaymentGateway
    {
        switch ($paymentGateway){
            case "paypal" :
                return new PaypalGateway();
        }
        throw new ProviderNotFoundException();
    }
}
