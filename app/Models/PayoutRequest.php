<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PayoutRequest extends Model
{
    use HasFactory;

    protected $fillable = [
        'header_batch_id',
        'batch_id',
        'status',
        'amount',
        'currency',
        'email',
        'response',
        'bank_account_id'
    ];
}
