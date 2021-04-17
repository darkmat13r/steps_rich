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
        $query = RewardHistory::join('users as a','a.id','reward_histories.from_id')
        ->leftjoin('users as b','b.id','reward_histories.user_id')
        ->select('reward_histories.*','a.name as from_name','b.name as user_name');
        return DataTables::of($query)
             ->addIndexColumn()
            ->addColumn("DT_RowIndex", '')
            
            ->addColumn('reward_date',function ($datatables){
                return date('d-m-Y',strtotime($datatables->created_at));
            })
          
            ->make(true);
    }
}
