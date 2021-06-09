<?php


namespace App\Services\Payment;


interface PaymentGateway
{
    function init();
    function createOrder(OrderRequest $request);
    function sendPayout(BatchPayoutRequest $request);
    function verify($orderId);
    function capture($orderId);
    function verifyPayout($batchId);
}
