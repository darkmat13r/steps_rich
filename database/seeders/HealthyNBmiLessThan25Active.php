<?php

namespace Database\Seeders;

use App\Builders\LevelRequirementBuilder;
use App\Models\LevelRequirement;
use Illuminate\Database\Seeder;

class HealthyNBmiLessThan25Active extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $builder = new LevelRequirementBuilder();
        $builder->setActivityLevel('active')
            ->setLevel(1)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setRequiredSteps(6000)
            ->setRequiredCycle(1)
            ->setRequiredPeriod(3)
            ->setRequiredRepeat(1)
            ->setRequiredRepeatInterval('week')
            ->setMinimumSteps(5000)
            ->setMinimumCycle(1)
            ->setMinimumPeriod(3)
            ->setMinimumRepeat(1)
            ->setMinimumRepeatInterval('week');
        (new LevelRequirement())->forceFill($builder->build())->save();

        $builder->setActivityLevel('active')
            ->setLevel(2)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setRequiredSteps(8000)
            ->setRequiredCycle(1)
            ->setRequiredPeriod(3)
            ->setRequiredRepeat(1)
            ->setRequiredRepeatInterval('week')
            ->setMinimumSteps(6500)
            ->setMinimumCycle(1)
            ->setMinimumPeriod(3)
            ->setMinimumRepeat(1)
            ->setMinimumRepeatInterval('week');
        (new LevelRequirement())->forceFill($builder->build())->save();

        $builder->setActivityLevel('active')
            ->setLevel(3)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setRequiredSteps(9000)
            ->setRequiredCycle(1)
            ->setRequiredPeriod(3)
            ->setRequiredRepeat(1)
            ->setRequiredRepeatInterval('week')
            ->setMinimumSteps(8000)
            ->setMinimumCycle(1)
            ->setMinimumPeriod(3)
            ->setMinimumRepeat(1)
            ->setMinimumRepeatInterval('week');
        (new LevelRequirement())->forceFill($builder->build())->save();

        $builder->setActivityLevel('active')
            ->setLevel(4)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setRequiredSteps(10000)
            ->setRequiredCycle(1)
            ->setRequiredPeriod(5)
            ->setRequiredRepeat(15)
            ->setRequiredRepeatInterval('day')
            ->setMinimumSteps(10000)
            ->setMinimumCycle(1)
            ->setMinimumPeriod(4)
            ->setMinimumRepeat(15)
            ->setMinimumRepeatInterval('day');
        (new LevelRequirement())->forceFill($builder->build())->save();


        $builder->setActivityLevel('active')
            ->setLevel(5)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setRequiredSteps(10000)
            ->setRequiredCycle(1)
            ->setRequiredPeriod(6)
            ->setRequiredRepeat(15)
            ->setRequiredRepeatInterval('day')
            ->setMinimumSteps(10000)
            ->setMinimumCycle(1)
            ->setMinimumPeriod(5)
            ->setMinimumRepeat(15)
            ->setMinimumRepeatInterval('day');
        (new LevelRequirement())->forceFill($builder->build())->save();


        $builder->setActivityLevel('active')
            ->setLevel(6)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setMinimumSteps(10000)
            ->setMinimumCycle(1)
            ->setMinimumPeriod(7)
            ->setMinimumRepeat(15)
            ->setMinimumRepeatInterval('day');
        (new LevelRequirement())->forceFill($builder->build())->save();
    }
}
