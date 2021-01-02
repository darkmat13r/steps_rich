<?php


namespace App\Services;


use App\Models\HealthCondition;

class HealthConditionService
{

    function create($name){
        $condition =  (new HealthCondition())->forceFill([
            'name' => $name
        ]);
        $condition->save();
    }

    public function getAll()
    {
        return HealthCondition::all();
    }
}
