<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\RewardHistory;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class RewardController extends Controller
{
    public function index(){
        return view('admin.rewards.index');
    }
    public function getData(){
        $query = RewardHistory::get();
        return DataTables::of($query)
            ->addIndexColumn()
            ->addColumn('user_name',function ($datatables){
                return $datatables->user->name;
            })
            ->addColumn('reward_date',function ($datatables){
                return date('d-m-Y',strtotime($datatables->created_at));
            })
            ->addColumn('from_name',function ($datatables){
                return $datatables->fromUser->name;
            })
            ->addColumn('DT_RowIndex','')
            ->make(true);
    }
}
