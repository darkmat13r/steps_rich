<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{


    /**
     * Where to redirect users after login.
     *
     * @var string
     */
//    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function login(Request $request){
        $request->validate([
            'email'=>'required',
            'password'=>'required',
        ]);
        $data = User::where(['email'=>$request->email,'is_type'=>1])->first();
        if ($data){
            if(Hash::check($request->password,$data->password)) {
                Auth::login($data);
                return redirect()->route('admin.dashboard');
            }
            else{
                return redirect()->back();
            }
        }
    }
}
