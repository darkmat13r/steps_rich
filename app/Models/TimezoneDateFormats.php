<?php


namespace App\Models;
use Carbon\Carbon;

use Illuminate\Support\Facades\Auth;
trait TimezoneDateFormats
{

    function getCreatedAtAttribute($val){
        if(Auth::user() && Auth::user()->timezone){
            return Carbon::parse($val)->setTimezone(Auth::user()->timezone);
        }
        return Carbon::parse($val);
    }
}
