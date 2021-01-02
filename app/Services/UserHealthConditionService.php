<?php


namespace App\Services;


use App\Models\UserHealthCondition;

class UserHealthConditionService
{

    function create($userId, $conditionId)
    {
        $healthCondition = (new UserHealthCondition())->forceFill([
            'user_id' => $userId,
            'health_condition_id'  => $conditionId
        ]);
        $healthCondition->save();
    }

    function createMultiple($userId, $conditionIds  = []){
        if(!is_array($conditionIds)) return;
        UserHealthCondition::where('user_id', $userId)->delete();
        foreach ($conditionIds as $conditionId){
            $this->create($userId, $conditionId);
        }
    }
}
