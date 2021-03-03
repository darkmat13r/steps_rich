<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Services\UserService;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
class UserController extends Controller
{
    public function __construct()
    {
        $this->userservice = new UserService();
    }

    public function index(){
        return view('admin.users.index');
    }

    public function view($id){
        $data = User::find($id);
        $profileData = $this->userservice->getProfile($id);
        $downLine = User::take(5)->get();
        return view('admin.users.view',compact('data','profileData','downLine'));
    }

    public function getData(){
        $query = User::where('is_type',0)->get();
        return DataTables::of($query)
            ->addIndexColumn()
            ->addColumn('DT_RowIndex','')
            ->addColumn('action', function($datatables){
                return '<a href="'.url('admin/users/view/'. $datatables->id).'" class="btn btn-primary btn-xs ml-1" title="View">
                            <i class="fa fa-eye"></i>
                        </a>';
            })
            ->make(true);
    }
}
