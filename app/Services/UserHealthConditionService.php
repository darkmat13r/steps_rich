<?php


namespace App\Services;


use App\Models\UserHealthCondition;

class UserHealthConditionService
{

    function create($userId, $conditionId, $info  =  null)
    {
        $healthCondition = (new UserHealthCondition())->forceFill([
            'user_id' => $userId,
            'health_condition_id'  => $conditionId,
            'info'  => $info,
        ]);
        $healthCondition->save();
    }

    function createMultiple($userId, $conditionIds  = [],  $conditionInfos  = []){
        if(!is_array($conditionIds)) return;
        UserHealthCondition::where('user_id', $userId)->delete();
        foreach ($conditionIds as $conditionId){
            $this->create($userId, $conditionId, isset($conditionInfos[$conditionId]) ? $conditionInfos[$conditionId] :null);
        }
    }
}
