<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Yajra\DataTables\Html\Editor\Fields\BelongsTo;

class RewardHistory extends Model
{
    use HasFactory;


    function fromUser(){
        return $this->belongsTo(User::class, 'from_id', 'id');
    }

    function user(){
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
