<?php


namespace App\Services;


use App\Repositories\BankTransferReceiptRepository;
use Illuminate\Http\File;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;

class BankTransferReceiptService
{
    private $bankTransferReceiptRepo;

    public function __construct()
    {
        $this->bankTransferReceiptRepo = new BankTransferReceiptRepository();
    }


    function upload($userId, UploadedFile $file){
        $path = Storage::put('receipts/'.$userId, $file);
        $model = $this->bankTransferReceiptRepo->saveReceipt($userId, $path);
        return $model;
    }

}
