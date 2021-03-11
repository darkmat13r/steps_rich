<?php


namespace App\Services;


use App\Exceptions\GeneralException;
use App\Helpers\StringHelper;
use App\Models\Setting;
use App\Models\User;
use App\Models\UserTree;
use Illuminate\Support\Facades\Hash;

class AuthService
{

    function register($data)
    {
        $referralCode = isset($data['referral_code']) ? $data['referral_code'] : null;
        $referredBy = User::findByReferralCode($referralCode)->first();
        if($referralCode && $referredBy){
            new GeneralException('auth.errors.invalid_referral_code');
        }
        $data['password'] = bcrypt($data['password']);
        $data['referral_code'] = StringHelper::randomString(6);
        $data['email'] = $data['username'];
        unset($data['username']);
        $user = (new User())->forceFill($data);
        $user->save();
        $user->access_token = $user->createToken($data['email'])->accessToken;
        if($referralCode){
            $this->addToUserTree($user->id, $referredBy->id);
        }
        return $user;
    }


    function addToUserTree($userId, $fromUserId)
    {
        $childCount = UserTree::where('parent_user_id', $fromUserId)->get();
        $maxUserAllowed = \setting(Setting::MAX_ALLOW_CHILD);
        $allowExtendedTree = \setting(Setting::ALLOW_EXTENDED_TREE);
        if($maxUserAllowed != 0 && $childCount >= $maxUserAllowed){
            return;
        }
        $emptyNodeUserId = $fromUserId;
        if($emptyNodeUserId){
            (new UserTree())->forceFill([
                'parent_user_id' => $emptyNodeUserId['user_id'],
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
        $user->access_token = $user->createToken($username)->accessToken;
        return $user;
    }

}
