<?php

namespace App\Http\Controllers\Frontend;

use App\Helpers\JsonResponse;
use App\Http\Controllers\Controller;
use App\Repositories\BankAccountRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class BankAccountController extends Controller
{
    private $bankAccountRepo;

    public function __construct()
    {
        $this->bankAccountRepo = new BankAccountRepository();
    }


    function create(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'account_number' => ['required'],
            'account_name' => ['required'],
        ]);
        if ($validator->fails()) {
            return JsonResponse::fail($validator->errors()->first());
        }
        $data =  [];
        $data['bank_name'] = 'paypal';
        $data['account_number'] = $request->get('account_number');
        $data['account_name'] = $request->get('account_name');
        $data['account_type'] = 'Customer';
        $this->bankAccountRepo->updateOrCreate(Auth::id(),
            $data );
        return JsonResponse::success();
    }
    function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'account_number' => ['required'],
            'account_name' => ['required']
        ]);
        if ($validator->fails()) {
            return JsonResponse::fail($validator->errors()->first());
        }
        $data =  [];
        $data['bank_name'] = 'paypal';
        $data['account_number'] = $request->get('account_number');
        $data['account_name'] = $request->get('account_name');
        $data['account_type'] = 'Customer';
        $this->bankAccountRepo->updateOrCreate(Auth::id(),
            $data);
        return JsonResponse::success();
    }
}
