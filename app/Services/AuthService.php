<?php


namespace App\Services;


use App\Exceptions\GeneralException;
use App\Helpers\ReferralCodeHelper;
use App\Helpers\StringHelper;
use App\Models\Setting;
use App\Models\User;
use App\Models\UserTree;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;

class AuthService
{


    public function __construct()
    {
    }

    function register($data)
    {

        Log::error("DAta : " . json_encode($data));
        $referralCode = isset($data['referral_code']) ? $data['referral_code'] : null;
        $referredBy = User::findByReferralCode($referralCode)->first();

        if(!$referredBy){
            throw new GeneralException(__('auth.errors.invalid_referral_code'));
        }
        $data['password'] = bcrypt($data['password']);
      //  $data['referral_code'] = ReferralCodeHelper::generate($username);
        $data['email'] = $data['username'];
        unset($data['username']);
        $user = (new User())->forceFill($data);
        $user->save();
        $user->referral_code = ReferralCodeHelper::generate($user);
        $user->save();
        $user->access_token = $user->createToken($data['email'])->accessToken;
        if($referralCode && $referredBy){
            Log::error("Add To Tree : ");
            $this->addToUserTree($user->id, $referredBy->id);
        }
        return $user;
    }


    function addToUserTree($userId, $fromUserId)
    {
        $childCount = UserTree::where('parent_user_id', $fromUserId)->get();
      /*  $maxUserAllowed = \setting(Setting::MAX_ALLOW_CHILD);
        $allowExtendedTree = \setting(Setting::ALLOW_EXTENDED_TREE);
        if($maxUserAllowed != 0 && $childCount >= $maxUserAllowed){
            return;
        }*/
        $emptyNodeUserId = $fromUserId;
        if($emptyNodeUserId){
            (new UserTree())->forceFill([
                'parent_user_id' => $emptyNodeUserId,
                'child_user_id' => $userId,
                'referred_by' => $fromUserId
            ])->save();
        }
    }

   /* function findUserWithEmptyNode($userId){
        $maxUserAllowed = \setting(Setting::MAX_ALLOW_CHILD);
        $userNodes = UserTree::where('parent_user_id', $userId)->get();
        if($userNodes->count() <  $maxUserAllowed){
            return $userId;
        }
        foreach ($userNodes as $node){
            $this->findUserWithEmptyNode($node->child_user_id);
        }
    }*/

    public function findUserWithEmptyNode($userId,$index =0, $level = 0){
        $maxUserAllowed = \setting(Setting::MAX_ALLOW_CHILD);
        $userNodes = UserTree::where('parent_user_id', $userId)->get();
        if($userNodes->count() <  $maxUserAllowed){
            return [
                'user_id' => $userId,
                'level' => $level,
                'index' => $index
            ];
        }
        $level++;
        foreach ($userNodes as $index => $node){
            $childUserId =  $this->findUserWithEmptyNode($node->child_user_id,$index, $level);
            if($childUserId && ($childUserId['level'] <= $level || $childUserId['index'] <  $index)){
                return $childUserId;
            }
        }
    }

    function login($username, $password)
    {
        $user = User::where('email', $username)->first();
        if (!$user) {
            throw new GeneralException(__('auth.errors.user_not_registered'));
        }
        if (!Hash::check($password, $user->password)) {
            throw new GeneralException(__('auth.errors.invalid_credentials'));
        }
        return $user;
    }

}
