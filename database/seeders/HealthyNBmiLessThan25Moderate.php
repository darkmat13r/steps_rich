<?php

namespace Database\Seeders;

use App\Builders\LevelRequirementBuilder;
use App\Models\LevelRequirement;
use Illuminate\Database\Seeder;

class HealthyNBmiLessThan25Moderate extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $builder = new LevelRequirementBuilder();
        $builder->setActivityLevel('moderate')
            ->setLevel(1)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setRequiredSteps(5000)
            ->setRequiredCycle(3)
            ->setRequiredPeriod(3)
            ->setRequiredRepeat(1)
            ->setRequiredRepeatInterval('week')
            ->setMinimumSteps(4000)
            ->setMinimumCycle(3)
            ->setMinimumPeriod(3)
            ->setMinimumRepeat(1)
            ->setMinimumRepeatInterval('week');
        (new LevelRequirement())->forceFill($builder->build())->save();

        $builder->setActivityLevel('moderate')
            ->setLevel(2)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setRequiredSteps(6500)
            ->setRequiredCycle(3)
            ->setRequiredPeriod(3)
            ->setRequiredRepeat(1)
            ->setRequiredRepeatInterval('week')
            ->setMinimumSteps(5000)
            ->setMinimumCycle(3)
            ->setMinimumPeriod(3)
            ->setMinimumRepeat(1)
            ->setMinimumRepeatInterval('week');
        (new LevelRequirement())->forceFill($builder->build())->save();

        $builder->setActivityLevel('moderate')
            ->setLevel(3)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setRequiredSteps(8000)
            ->setRequiredCycle(3)
            ->setRequiredPeriod(3)
            ->setRequiredRepeat(1)
            ->setRequiredRepeatInterval('week')
            ->setMinimumSteps(6500)
            ->setMinimumCycle(3)
            ->setMinimumPeriod(3)
            ->setMinimumRepeat(1)
            ->setMinimumRepeatInterval('week');
        (new LevelRequirement())->forceFill($builder->build())->save();

        $builder->setActivityLevel('moderate')
            ->setLevel(4)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setRequiredSteps(9000)
            ->setRequiredCycle(3)
            ->setRequiredPeriod(3)
            ->setRequiredRepeat(1)
            ->setRequiredRepeatInterval('week')
            ->setMinimumSteps(8000)
            ->setMinimumCycle(3)
            ->setMinimumPeriod(3)
            ->setMinimumRepeat(1)
            ->setMinimumRepeatInterval('week');
        (new LevelRequirement())->forceFill($builder->build())->save();


        $builder->setActivityLevel('moderate')
            ->setLevel(5)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setRequiredSteps(10000)
            ->setRequiredCycle(3)
            ->setRequiredPeriod(3)
            ->setRequiredRepeat(1)
            ->setRequiredRepeatInterval('week')
            ->setMinimumSteps(10000)
            ->setMinimumCycle(2)
            ->setMinimumPeriod(5)
            ->setMinimumRepeat(15)
            ->setMinimumRepeatInterval('day');
        (new LevelRequirement())->forceFill($builder->build())->save();


        $builder->setActivityLevel('moderate')
            ->setLevel(6)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setMinimumSteps(10000)
            ->setMinimumCycle(2)
            ->setMinimumPeriod(6)
            ->setMinimumRepeat(15)
            ->setMinimumRepeatInterval('day');
        (new LevelRequirement())->forceFill($builder->build())->save();
    }
}
