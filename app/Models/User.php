<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    use HasFactory, Notifiable, HasApiTokens, HasRoles;

    protected $dates = ['created_at', 'first_cycle_started_at','level_last_updated_at'];
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'country_code',
        'country',
        'phone',
        'referral_code',
        'dob',
        'gender',
        'activity_level',
        'weight',
        'height',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    function scopeFindByReferralCode($query, $referralCode){
        return $query->where('referral_code', $referralCode);
    }

    function isProfileComplete(){
        return is_null($this->dob) == false && is_null($this->name) == false
            && is_null($this->gender) == false && is_null($this->activity_level)
            && is_null($this->weight) == false && is_null($this->height)  ;
    }

    function healthConditions(){
        return $this->hasMany(UserHealthCondition::class);
    }

    function rewards(){
        return $this->hasMany(RewardHistory::class,'user_id');
    }

    function bankAccount(){
        return $this->hasOne(BankAccount::class);
    }
    function bankTransfertReceipt(){
        return $this->hasOne(UserBankTransferReceipt::class);
    }
}
