<?php

namespace App\Models;

use App\Helpers\StringHelper;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BankAccount extends Model
{
    use HasFactory;

    protected $fillable = ['user_id',
        'bank_name',
        'account_number',
        'account_type',
        'account_name'];

    function getAccountNumberAttribute($value)
    {
        return StringHelper::stringToSecret($value);
    }
}
