<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\RewardHistory;
use App\Models\Transaction;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        $pendingUsers = User::where('is_type',0)->whereNull('approved_at')->get();
        $approvedUsers = User::where('is_type',0)->whereNotNull('approved_at')->get();
        $totalTransaction = Transaction::get();
        $topUsers = User::where('is_type',0)->orderBy('level','desc')->take(10)->get();
        $todayUsers = User::where('is_type',0)->whereDate('created_at',Carbon::today())->get();
        $totalRewards = RewardHistory::get()->sum('amount');
        $todayRewards = RewardHistory::whereDate('created_at',Carbon::today())->get()->sum('amount');
        return view('admin.home',compact('pendingUsers','totalTransaction','approvedUsers','todayUsers','todayRewards','totalRewards','topUsers'));
    }
}
