<?php


namespace App\Repositories;


use App\Models\User;

class UserRepository
{

    function  getAll(){
        return User::all();
    }
}
