<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    use HasFactory;

    public const ALLOW_EXTENDED_TREE = "ALLOW_EXTENDED_TREE";
    public const MAX_ALLOW_CHILD = "MAX_ALLOW_CHILD";
}
