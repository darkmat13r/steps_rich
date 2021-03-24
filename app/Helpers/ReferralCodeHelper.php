<?php


namespace App\Helpers;


use App\Exceptions\GeneralException;
use App\Models\User;

class ReferralCodeHelper
{

    static function generate(User  $user){
        if(!$user)
            throw  new GeneralException("Invalid user");
        $userNames = explode(' ', $user->name);
        $userName = $user->email;
        $referralCode = substr($userName, 0,2);
        $referralCode .= sprintf('%06d', $user->id);
        return strtoupper($referralCode);
    }
}
