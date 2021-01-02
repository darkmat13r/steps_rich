<?php


namespace App\Services;


use App\Exceptions\GeneralException;
use App\Helpers\StringHelper;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AuthService
{

    function register($email,$countryCode,  $phone, $password, $referralCode  = null){
        $user = (new User())->forceFill([
            'email' => $email,
            'phone' => $phone,
            'country_code' => $countryCode,
            'password' => bcrypt($password),
            'referral_code' => StringHelper::randomString(6)
        ]);
        $user->save();
        $user->access_token = $user->createToken($email)->accessToken;
        //TODO referral code
        return $user;
    }

    function login($username, $password){
        $user = User::where('email', $username)->first();
        if(!$user){
            throw new GeneralException(__('auth.errors.user_not_registered'));
        }
        if(!Hash::check($password, $user->password)){
            throw new GeneralException(__('auth.errors.invalid_credentials'));
        }
        $user->access_token = $user->createToken($username)->accessToken;
        return $user;
    }

}
