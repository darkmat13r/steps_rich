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
            'bank_name' => ['required'],
            'account_number' => ['required'],
            'account_type' => ['required'],
            'account_name' => ['required']
        ]);
        if ($validator->fails()) {
            return JsonResponse::fail($validator->errors()->first());
        }
        $this->bankAccountRepo->updateOrCreate(Auth::id(),
            $request->only('bank_name', 'account_number', 'account_type', 'account_name'));
        return JsonResponse::success();
    }
    function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'bank_name' => ['required'],
            'account_number' => ['required'],
            'account_type' => ['required'],
            'account_name' => ['required']
        ]);
        if ($validator->fails()) {
            return JsonResponse::fail($validator->errors()->first());
        }
        $this->bankAccountRepo->updateOrCreate(Auth::id(),
            $request->only('bank_name', 'account_number', 'account_type', 'account_name'));
        return JsonResponse::success();
    }
}
