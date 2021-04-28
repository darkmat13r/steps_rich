<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PayoutBatchRequest extends Model
{
    use HasFactory;

    protected $fillable = ['batch_id',
        'batch_response',
        'status',
        'data'];
}
