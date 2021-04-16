<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserBankTransferReceipt extends Model
{
    use HasFactory;

    function getPathAttribute($value){
        return asset('storage/'.$value);
    }
}
