<?php


namespace App\Helpers;


use App\Models\User;
use Illuminate\Support\Facades\DB;

class CommonClass
{
    static function getUserByMonth($month)
    {
        $startdate= date("Y-$month-01");
        $enddate= date("Y-$month-t");
        return User::whereBetween(DB::raw('DATE(created_at)'), [$startdate, $enddate])->count();
    }

    static function getApprovedUserByMonth($month)
    {
        $startdate= date("Y-$month-01");
        $enddate= date("Y-$month-t");
        return User::whereBetween(DB::raw('DATE(created_at)'), [$startdate, $enddate])->where('is_type',0)->whereNotNull('approved_at')->count();
    }

    static function getPendingUserByMonth($month)
    {
        $startdate= date("Y-$month-01");
        $enddate= date("Y-$month-t");
        return User::whereBetween(DB::raw('DATE(created_at)'), [$startdate, $enddate])->where('is_type',0)->whereNull('approved_at')->count();
    }
}
