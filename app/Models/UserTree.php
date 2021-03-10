<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserTree extends Model
{
    use HasFactory;

    function child(){
        return $this->belongsTo(User::class, "child_user_id", "id");
    }

}
