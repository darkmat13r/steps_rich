<?php


namespace App\Services\Payment;


interface PaymentGateway
{
    function init();
    function createOrder(OrderRequest $request);
    function verify($orderId);
}
