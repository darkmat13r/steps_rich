<?php

namespace App\Http\Controllers\Admin;

use App\Exports\ReportExport;
use App\Http\Controllers\Controller;
use App\Models\BankAccount;
use App\Models\Transaction;
use App\Models\User;
use App\Models\UserTree;
use App\Services\UserService;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Excel;
use Yajra\DataTables\Facades\DataTables;

class UserController extends Controller
{
    public function __construct()
    {
        $this->userservice = new UserService();
    }

    public function index()
    {
        return view('admin.users.index');
    }

    public function indexPending()
    {
        return view('admin.users.pending');
    }

    public function view($id)
    {
        $data = User::find($id);
        $profileData = $this->userservice->getProfile($id);
        $bankDetails = $data->bankAccount;
        // dd($profileData);
        // if(!$profileData){
        //     session()->flash('danger_msg','Profile detail not fillup');
        //     return redirect()->back();
        // }
       
        $mUsers = $this->buildTree($data->id, $data->id, 1000);
        $referrer = UserTree::where('child_user_id', $data->id)->value('referred_by');
        $referredBy = '--';
        if ($referrer) {
            $referredBy = User::find($referrer)->name;
        }
        $downLine = [];
        foreach ($mUsers as $key => $value) {
            if (isset($value->child))
                $downLine[] = $value;
        }
        return view('admin.users.view', compact('data', 'referredBy', 'profileData', 'downLine', 'bankDetails'));
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

    public function approve($id)
    {
        $user = User::find($id);
        $user->approved_at = date('Y-m-d H:i:s');
        $user->save();
        return response()->json('success', 200);
    }

    public function getData()
    {
        $query = User::where('is_type', 0)
            ->whereNotNull('updated_at')
            ->get();
        return DataTables::of($query)
            ->addIndexColumn()
            ->addColumn('DT_RowIndex', '')
            ->addColumn('action', function ($datatables) {
                return '<a href="' . url('admin/users/view/' . $datatables->id) . '" class="btn btn-primary btn-sm ml-1" title="View">
                            <i class="fa fa-eye"></i>
                        </a>';
            })
            ->make(true);
    }

    public function getPendingData()
    {
        $query = User::join('user_bank_transfer_receipts', 'user_bank_transfer_receipts.user_id', 'users.id')
            ->where('is_type', 0)
            ->whereNull('approved_at')
            ->select('users.*', 'path')
            ->get();
        return DataTables::of($query)
            ->addIndexColumn()
            ->addColumn('DT_RowIndex', '')
            ->addColumn('receipt', function ($datatables) {
                return '<img src="' . $datatables->path . '" width="70">';

            })
            ->addColumn('action', function ($datatables) {
                return '<button onclick="confirmIt(' . $datatables->id . ')" class="btn btn-primary btn-sm" title="Approve">
                            Approve
                        </button>';
            })
            ->rawColumns(['receipt', 'action'])
            ->make(true);
    }


//    Payout

    public function payout()
    {
        return view('admin.payout.index');
    }

    public function getPayoutData()
    {
        $query = User::join('bank_accounts','bank_accounts.user_id','users.id')
            ->where('is_type', 0)
            ->where('wallet_amount','>',0)
            ->select('users.*','bank_name','account_number','account_name','account_type')
            ->get();
        return DataTables::of($query)
            ->addIndexColumn()
            ->addColumn('DT_RowIndex', '')

            ->addColumn('action', function ($datatables) {
                return '<div class="checkbox checkbox-success">
                            <label class="checkbox">
                                <input name="check[]" value="'. $datatables->id .'" class="check"  type="checkbox">
                                <span></span>
                            </label>
                        </div>';
            })
            ->make(true);
    }

    public function payoutExcel(Request $request)
    {
        $data = User::join('bank_accounts','bank_accounts.user_id','users.id')
            ->where('is_type', 0)
            ->where('wallet_amount','>',0)
            ->select('name','email','wallet_amount','bank_name','account_name','account_number','account_type')
            ->get();
        $headings = [
            'Name',
            'Email',
            'Wallet',
            'Bank',
            'Account Name',
            'Account No',
            'Account Type',
        ];

        return \Excel::download(new ReportExport($data, $headings), 'Payout Report.xlsx');
    }

    public function payoutDone(Request $request){
        DB::beginTransaction();
        try{
            $check = $request->check;
            foreach ($check as $key => $value){
                $user = User::find($value);
                $bankID = BankAccount::where('user_id', $user->id)->first()->id;
                $amount = $user->wallet_amount;

                $newTra = new Transaction;
                $newTra->user_id = $user->id;
                $newTra->amount = $amount;
                $newTra->bank_account_id = $bankID;
                $newTra->via = "Bank Transfer";
                $newTra->save();

                $user->wallet_amount = 0;
                $user->save();
                DB::commit();

            }
        }
        catch (\Exception $e){
            DB::rollBack();
//            dd($e->getMessage());
            session()->flash('danger_msg',$e->getMessage());
            return redirect()->back();
        }
        session()->flash('success_msg','Amount paid successfully.');
        return redirect()->back();
    }



    //    Transactions

    public function transaction()
    {
        return view('admin.transaction.index');
    }

    public function getTransactionData()
    {
        $query = Transaction::join('users','transactions.user_id','users.id')
            ->join('bank_accounts','bank_accounts.id','transactions.bank_account_id')
            ->select('transactions.*','bank_name','account_number','name')
            ->get();
        return DataTables::of($query)
            ->addIndexColumn()
            ->addColumn('DT_RowIndex', '')
            ->addColumn('date', function ($datatables){
                return date('d-M-Y', strtotime($datatables->created_at));
            })
            ->make(true);
    }
}
