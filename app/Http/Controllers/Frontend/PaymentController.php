<?php

namespace App\Http\Controllers\Frontend;

use App\Helpers\JsonResponse;
use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Services\Payment\OrderRequest;
use App\Services\Payment\PaymentGatewayFactory;
use App\Services\UserService;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Route;

class PaymentController extends Controller
{

    private $paymentGateway;
    private $userService;

    /**
     * PaymentController constructor.
     */
    public function __construct()
    {
        $this->paymentGateway = PaymentGatewayFactory::create(config('payment.provider'));
        $this->userService = new UserService();
    }


    function payment(Request $request, $customerId)
    {
        $user = $this->userService->getProfile($customerId);
        return view('paypal.payment', ['user' => $user]);
    }


    function createOrder(Request $request, $userId)
    {
        $orderRequest = new OrderRequest();
        $orderRequest->setAmount("5");
        $orderRequest->setUserId($userId);
        $order = $this->paymentGateway->createOrder($orderRequest);
        $this->updateUserOrder($userId, $order, $orderRequest->getAmount() * 100);
        return Response::json($order);
    }

    function updateUserOrder($userId, $order, $amount)
    {
        $order = (object)$order;
        $data = [
            'order_id' => $order->id,
            'user_id' => $userId,
            'response' => json_encode($order),
            'status' => $order->status
        ];
        if ($amount) {
            $data['amount'] = $amount;
        }
        (new Order())->updateOrCreate([
            'order_id' => $order->id,
            'user_id' => $userId
        ], $data);
    }

    function verify(Request $request, $orderId)
    {
        $order = $this->paymentGateway->verify($orderId);
        Log::alert(Route::getCurrentRoute()->getName());
        Log::alert(json_encode(Route::getCurrentRoute()));
        Log::alert(json_encode($order));
        $order = (object)$order;
        $userOrder = Order::where('order_id', $orderId)->first();
        $userOrder->status = $order->status;
        $userOrder->response = json_encode($order);
        $userOrder->save();
        if ($order->status == 'APPROVED' || $order->status == 'COMPLETED') {
         $this->userService->activate($userOrder->user_id);
        }
        return Response::json($order);
    }

    function callback(Request $request)
    {
        Log::alert("Callback : " + json_encode($request->all()));
    }
}
