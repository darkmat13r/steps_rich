<?php


namespace App\Services\Payment;


use App\Exceptions\GeneralException;
use Carbon\Carbon;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;
use PayPal\Api\Item;
use PayPal\Api\ItemList;
use PayPal\Api\Payer;
use PayPal\Api\PayerInfo;
use PayPal\Api\Payment;
use PayPal\Api\RedirectUrls;
use PayPal\Api\Transaction;
use PayPal\Auth\OAuthTokenCredential;
use PayPal\Rest\ApiContext;
use PayPalCheckoutSdk\Core\PayPalHttpClient;
use PayPalCheckoutSdk\Core\SandboxEnvironment;
use PayPalCheckoutSdk\Core\ProductionEnvironment;
use PayPalCheckoutSdk\Orders\OrdersCreateRequest;
use PayPalCheckoutSdk\Orders\OrdersGetRequest;
use PaypalPayoutsSDK\Payouts\PayoutsGetRequest;
use PaypalPayoutsSDK\Payouts\PayoutsPostRequest;

class PaypalGateway implements PaymentGateway
{

    private $config;
    private $client;
    public function __construct()
    {
        $this->init();
    }

    function init()
    {
        $config = config('paypal');
        $this->config = $config;
        $mode = $config['mode'];
        $clientId = $config[$mode]['client_id'];
        $clientSecret = $config[$mode]['client_secret'];
        if($mode == 'sandbox'){
            $environment = new SandboxEnvironment($clientId, $clientSecret);
        }else{
            $environment = new ProductionEnvironment($clientId, $clientSecret);
        }
        $this->client = new PayPalHttpClient($environment);


    }

    function createOrder(OrderRequest $params)
    {
        $request = new OrdersCreateRequest();
        $request->prefer('return=representation');
        $request->body = [
            "intent" => "CAPTURE",
            "purchase_units" => [[
                "reference_id" => $params->getUserId(),
                "amount" => [
                    "value" => $params->getAmount(),
                    "currency_code" => $params->getCurrency()
                ]
            ]],
            "application_context" => [
                "cancel_url" => $this->config['notify_url'],
                "return_url" => $this->config['notify_url']
            ]
        ];

        try {
            // Call API with your client and get a response for your call
            $response = $this->client->execute($request);
            // If call returns body in response, you can get the deserialized version from the result attribute of the response
           return $response->result;
        }catch (\HttpException $ex) {
            Log::error($ex->getMessage());
            Log::error($ex->getTraceAsString());
           throw new GeneralException("Some error occurred. Sorry for inconvenience");
        }
    }

    function sendPayout(BatchPayoutRequest $params)
    {
        $batchId  = Carbon::now()->timestamp;
        $items = $params->getPayoutReceivers();
        $data = [
            'sender_batch_header' =>[
                'sender_batch_id' => $batchId,
                'email_subject' => $params->getEmailSubject(),
                'email_message' => $params->getEmailMessage()
            ],
            'items' => $items
        ];
        $request = new PayoutsPostRequest();
        $request->body = json_encode($data);
        $response = $this->client->execute($request);
        return $response->result;
    }

    function verify($orderId)
    {
        $request = new OrdersGetRequest($orderId);
        try {
            // Call API with your client and get a response for your call
            $response = $this->client->execute($request);
            // If call returns body in response, you can get the deserialized version from the result attribute of the response
            return $response->result;
        }catch (\HttpException $ex) {
            Log::error($ex->getMessage());
            Log::error($ex->getTraceAsString());
            throw new GeneralException("Some error occurred. Sorry for inconvenience");
        }
    }

    function verifyPayout($batchId)
    {
        $request = new PayoutsGetRequest($batchId);
        try {
            // Call API with your client and get a response for your call
            $response = $this->client->execute($request);
            // If call returns body in response, you can get the deserialized version from the result attribute of the response
            return $response->result;
        }catch (\HttpException $ex) {
            Log::error($ex->getMessage());
            Log::error($ex->getTraceAsString());
            throw new GeneralException("Some error occurred. Sorry for inconvenience");
        }
    }
}
