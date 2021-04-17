<?php


namespace App\Repositories;


use App\Models\User;
use Carbon\Carbon;

class UserRepository
{

    function  getAll(){
        return User::all();
    }

    public function activate($user_id)
    {
        $user = User::find($user_id);
        $user->approved_at = Carbon::now()->toDateTimeString();
        $user->save();
        return $user;
    }
}
