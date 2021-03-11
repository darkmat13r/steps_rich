<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\RewardHistory;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        $totalUsers = User::where('is_type',0)->get();
        $activeUsers = User::where(['is_type'=>0,'activity_level'=>'active'])->count();
        $inActiveUsers = User::where(['is_type'=>0,'activity_level'=>'inactive'])->count();
        $topUsers = User::where('is_type',0)->orderBy('level','desc')->take(10)->get();
        $todayUsers = User::where('is_type',0)->whereDate('created_at',Carbon::today())->get();
        $totalRewards = RewardHistory::get()->sum('amount');
        $todayRewards = RewardHistory::whereDate('created_at',Carbon::today())->get()->sum('amount');
        return view('admin.home',compact('totalUsers','todayUsers','todayRewards','totalRewards','topUsers','activeUsers','inActiveUsers'));
    }
}
