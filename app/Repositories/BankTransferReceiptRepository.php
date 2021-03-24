<?php


namespace App\Repositories;


use App\Models\UserBankTransferReceipt;

class BankTransferReceiptRepository
{


    function saveReceipt($userId, $imagePath){
        $model = new UserBankTransferReceipt();
        $model->forceFill([
            'user_id' => $userId,
            'path' => $imagePath
        ]);
        $model->save();
        return $model;

    }

}
