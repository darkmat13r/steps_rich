<?php

namespace App\Http\Controllers\Frontend;

use App\Helpers\JsonResponse;
use App\Http\Controllers\Controller;
use App\Services\BankTransferReceiptService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class BanTransferReceiptController extends Controller
{
    private $bankTransferReceiptService;

    public function __construct()
    {
        $this->bankTransferReceiptService = new BankTransferReceiptService();
    }


    function upload(Request  $request){
        $validator = Validator::make($request->all(), [
            'file' => ['required', 'mimes:jpeg,jpg,png,gif']
        ]);
        if($validator->fails()){
            return JsonResponse::fail($validator->errors()->first());
        }

        $this->bankTransferReceiptService->upload(Auth::id(), $request->file('file'));
        return JsonResponse::success();
    }
}
