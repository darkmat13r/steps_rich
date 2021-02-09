<?php


namespace App\Repositories;


use App\Helpers\HealthHelper;
use App\Models\LevelRequirement;
use App\Models\User;
use App\Models\UserHealthCondition;
use Carbon\Carbon;

class LevelRequirementRepository
{

    function getRequirement($user)
    {
        if (!($user instanceof User)) {
            $user = User::find($user);
        }
        $bmi = HealthHelper::calculateBmi($user->weight, $user->height * 0.01);
        $healthConditions = UserHealthCondition::where('user_id', $user->id)->count();
        $hasHealthCondition = $healthConditions > 0;
        $age = Carbon::createFromFormat('Y-m-d', $user->dob)->age;

        $requirement = new LevelRequirement();
        $requirement = $requirement->where('min_bmi', '<', $bmi)->where(function ($query) use ($bmi) {
            return $query->where('max_bmi', '>', $bmi)->orWhereNull('max_bmi');
        });


        $requirement =$requirement->where('has_health_condition', $hasHealthCondition);
        $requirement =$requirement->where('level', $user->level);
        $requirement =$requirement->where('activity_level', $user->activity_level);

        $requirement =$requirement->where('min_age', '<', $age)->where(function ($query) use ($age) {
            return $query->where('max_age', '>', $age)->orWhereNull('max_age');
        });
        $req = $requirement->first();
        /*$req->user_info = [
            'age'=>$age,
            'activity_level' =>$user->activity_level,
            'level'=>$user->level,
            'bmi'=>$bmi,
            'has_health_condition'  => $hasHealthCondition
        ];*/
        return $req;
    }
}
