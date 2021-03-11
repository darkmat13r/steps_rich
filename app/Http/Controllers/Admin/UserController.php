<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\UserTree;
use App\Services\UserService;
use Carbon\Carbon;
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
        $mUsers = $this->buildTree($data->id, $data->id, 1000);
        $referrer = UserTree::where('child_user_id', $data->id)->value('referred_by');
        $referredBy ='--';
        if ($referrer){
            $referredBy = User::find($referrer)->name;
        }
        $downLine = [];
        foreach ($mUsers as $key => $value) {
            if (isset($value->child))
                $downLine[] = $value;
        }
        return view('admin.users.view',compact('data','referredBy','profileData','downLine'));
    }

    function buildTree($startId, $userId, $clevel, &$tree = [])
    {
        $nodes = UserTree::with(["child"])
            ->where("parent_user_id", $userId)->orderBy('id')->get();
        //dd($nodes);
        $level = $this->heightOfTree($userId, $startId);
        if ($level < $clevel) {
            foreach ($nodes as $index => $node) {
                $tree[] = $node;
                if ($node->user_id != $startId)
                    self::buildTree($startId, $node->child_user_id, $clevel, $tree);
            }

        }
        return $tree;

    }

    function heightOfTree($userId, $uptoId)
    {
        if ($userId == $uptoId) return 0;
        $parent = UserTree::where('child_user_id', $userId)
            ->first();
        //echo "Upline $parent->upline_id, $parent->id";
        //echo "UPTO: $uptoId";
        $level = 0;
        while ($parent && $uptoId != $parent->upline_id) {

            $parent = UserTree::where('child_user_id', $parent->parent_user_id)
                ->first();
            //echo "Upline $parent->upline_id, $parent->id";
            $level++;
        }

        return $level;
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
