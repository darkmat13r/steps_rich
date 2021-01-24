<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ActivityLog extends Model
{
    use HasFactory;

    protected $dates = ['created_at'];
    protected $fillable = ['created_at', 'type', 'value', 'user_id', 'offset', 'created_at'];
}
