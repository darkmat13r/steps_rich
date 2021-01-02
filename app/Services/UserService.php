<?php


namespace App\Services;


use App\Exceptions\GeneralException;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class UserService
{

    static $activityLevels = ['active', 'moderate', 'inactive'];

    function updateProfile($userId, $params  = []){
       $user = User::find($userId);
       $fillables  = $user->getFillable();
       DB::beginTransaction();
       foreach ($params as $key  => $param){
           if(in_array($key, $fillables) && $param){
               if($key == 'activity_level' && !in_array($param, self::$activityLevels)){
                   DB::rollBack();
                   throw new GeneralException(__('user.errors.invalid_activity_level'));
               }
               $user->{$key} = $param;
           }
       }
       $user->save();
       DB::commit();
       return $user;
    }

}
