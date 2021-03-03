<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class ProfileController extends Controller
{
    public function index(){
        $data = Auth::user();
        return view('admin.profile.index', compact('data'));
    }
    public function updateProfile(Request $request){
        if($request->mode == 1){
            $request->validate([
                'name'=>'required',
                'email'=>'required|email'
            ]);

            $data = Auth::user();
            $data->name = $request->name;
            $data->email = $request->email;

            $data->save();
            session()->flash('success_msg', 'Details has been updated');
            return redirect()->back();
        }
        elseif($request->mode == 2){
            $request->validate([
                'oldpassword'=>'required',
                'password'=>'required|min:6|confirmed',
            ]);
            $user=Auth::user();
            $oldpassword = $user->password;
            if(Hash::check($request->oldpassword,$oldpassword)){
                $user->password = Hash::make($request->password);
                $user->save();
                session()->flash('success_msg','Password has been Updated successfully');
                return redirect()->back();
            }
            else{
                session()->flash('danger_msg','Something went wrong');
                return redirect()->back();
            }
        }
    }
}
