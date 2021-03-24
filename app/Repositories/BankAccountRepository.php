<?php


namespace App\Repositories;


use App\Models\BankAccount;
use App\Models\User;

class BankAccountRepository
{

    function updateOrCreate($userId, $data=[]){
        $data = BankAccount::updateOrCreate([
            'user_id' => $userId
        ],[
            'user_id' => $userId,
            'bank_name' => $data['bank_name'],
            'account_number'=>$data['account_number'],
            'account_type' => $data['account_type'],
            'account_name'  => $data['account_name']
        ]);
        return $data;
    }
}
