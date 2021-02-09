<?php

namespace Database\Seeders;

use App\Builders\LevelRequirementBuilder;
use App\Models\LevelRequirement;
use Illuminate\Database\Seeder;

class HealthyNBmiLessThan25Inactive extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $builder = new LevelRequirementBuilder();
        $builder->setActivityLevel('inactive')
            ->setLevel(1)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setRequiredSteps(4000)
            ->setRequiredCycle(1)
            ->setRequiredPeriod(3)
            ->setRequiredRepeat(1)
            ->setRequiredRepeatInterval('week')
            ->setMinimumSteps(3000)
            ->setMinimumCycle(1)
            ->setMinimumPeriod(3)
            ->setMinimumRepeat(1)
            ->setMinimumRepeatInterval('week');
        (new LevelRequirement())->forceFill($builder->build())->save();

        $builder->setActivityLevel('inactive')
            ->setLevel(2)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setRequiredSteps(5000)
            ->setRequiredCycle(1)
            ->setRequiredPeriod(3)
            ->setRequiredRepeat(1)
            ->setRequiredRepeatInterval('week')
            ->setMinimumSteps(4000)
            ->setMinimumCycle(1)
            ->setMinimumPeriod(3)
            ->setMinimumRepeat(1)
            ->setMinimumRepeatInterval('week');
        (new LevelRequirement())->forceFill($builder->build())->save();

        $builder->setActivityLevel('inactive')
            ->setLevel(3)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setRequiredSteps(6500)
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

        $builder->setActivityLevel('inactive')
            ->setLevel(4)
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
            ->setMinimumSteps(7000)
            ->setMinimumCycle(1)
            ->setMinimumPeriod(3)
            ->setMinimumRepeat(1)
            ->setMinimumRepeatInterval('week');
        (new LevelRequirement())->forceFill($builder->build())->save();


        $builder->setActivityLevel('inactive')
            ->setLevel(5)
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


        $builder->setActivityLevel('inactive')
            ->setLevel(6)
            ->setHasHealthCondition(false)
            ->setMinAge(18)
            ->setMaxAge(55)
            ->setMinBmi(0)
            ->setMaxBmi(25)
            ->setMinimumSteps(10000)
            ->setMinimumCycle(1)
            ->setMinimumPeriod(5)
            ->setMinimumRepeat(15)
            ->setMinimumRepeatInterval('day');
        (new LevelRequirement())->forceFill($builder->build())->save();
    }
}
