<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
class UserLevelHistory extends Model
{
    use HasFactory;

    protected $dates = ['created_at'];



}
