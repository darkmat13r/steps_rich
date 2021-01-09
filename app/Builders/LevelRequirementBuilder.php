<?php


namespace App\Builders;


class LevelRequirementBuilder
{
    private $activityLevel;
    private $level;
    private $hasHealthCondition;
    private $minAge;
    private $maxAge;
    private $minBmi;
    private $maxBmi;
    private $requiredSteps;
    private $requiredRepeat;
    private $requiredPeriod;
    private $requiredRepeatInterval;
    private $requiredCycle;

    private $minimumSteps;
    private $minimumRepeat;
    private $minimumPeriod;
    private $minimumRepeatInterval;
    private $minimumCycle;

    /**
     * @return mixed
     */
    public function getActivityLevel()
    {
        return $this->activityLevel;
    }

    /**
     * @param mixed $activityLevel
     */
    public function setActivityLevel($activityLevel): LevelRequirementBuilder
    {
        $this->activityLevel = $activityLevel;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getLevel()
    {
        return $this->level;
    }

    /**
     * @param mixed $level
     */
    public function setLevel($level): LevelRequirementBuilder
    {
        $this->level = $level;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getHasHealthCondition()
    {
        return $this->hasHealthCondition;
    }

    /**
     * @param mixed $hasHealthCondition
     */
    public function setHasHealthCondition($hasHealthCondition): LevelRequirementBuilder
    {
        $this->hasHealthCondition = $hasHealthCondition;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getMinAge()
    {
        return $this->minAge;
    }

    /**
     * @param mixed $minAge
     */
    public function setMinAge($minAge): LevelRequirementBuilder
    {
        $this->minAge = $minAge;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getMaxAge()
    {
        return $this->maxAge;
    }

    /**
     * @param mixed $maxAge
     */
    public function setMaxAge($maxAge): LevelRequirementBuilder
    {
        $this->maxAge = $maxAge;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getMinBmi()
    {
        return $this->minBmi;
    }

    /**
     * @param mixed $minBmi
     */
    public function setMinBmi($minBmi): LevelRequirementBuilder
    {
        $this->minBmi = $minBmi;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getMaxBmi()
    {
        return $this->maxBmi;
    }

    /**
     * @param mixed $maxBmi
     */
    public function setMaxBmi($maxBmi): LevelRequirementBuilder
    {
        $this->maxBmi = $maxBmi;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getRequiredSteps()
    {
        return $this->requiredSteps;
    }

    /**
     * @param mixed $requiredSteps
     */
    public function setRequiredSteps($requiredSteps): LevelRequirementBuilder
    {
        $this->requiredSteps = $requiredSteps;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getRequiredRepeat()
    {
        return $this->requiredRepeat;
    }

    /**
     * @param mixed $requiredRepeat
     */
    public function setRequiredRepeat($requiredRepeat): LevelRequirementBuilder
    {
        $this->requiredRepeat = $requiredRepeat;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getRequiredPeriod()
    {
        return $this->requiredPeriod;
    }

    /**
     * @param mixed $requiredPeriod
     */
    public function setRequiredPeriod($requiredPeriod): LevelRequirementBuilder
    {
        $this->requiredPeriod = $requiredPeriod;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getRequiredRepeatInterval()
    {
        return $this->requiredRepeatInterval;
    }

    /**
     * @param mixed $requiredRepeatInterval
     */
    public function setRequiredRepeatInterval($requiredRepeatInterval): LevelRequirementBuilder
    {
        $this->requiredRepeatInterval = $requiredRepeatInterval;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getRequiredCycle()
    {
        return $this->requiredCycle;
    }

    /**
     * @param mixed $requiredCycle
     */
    public function setRequiredCycle($requiredCycle): LevelRequirementBuilder
    {
        $this->requiredCycle = $requiredCycle;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getMinimumSteps()
    {
        return $this->minimumSteps;
    }

    /**
     * @param mixed $minimumSteps
     */
    public function setMinimumSteps($minimumSteps): LevelRequirementBuilder
    {
        $this->minimumSteps = $minimumSteps;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getMinimumRepeat()
    {
        return $this->minimumRepeat;
    }

    /**
     * @param mixed $minimumRepeat
     */
    public function setMinimumRepeat($minimumRepeat): LevelRequirementBuilder
    {
        $this->minimumRepeat = $minimumRepeat;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getMinimumPeriod()
    {
        return $this->minimumPeriod;
    }

    /**
     * @param mixed $minimumPeriod
     */
    public function setMinimumPeriod($minimumPeriod): LevelRequirementBuilder
    {
        $this->minimumPeriod = $minimumPeriod;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getMinimumRepeatInterval()
    {
        return $this->minimumRepeatInterval;
    }

    /**
     * @param mixed $minimumRepeatInterval
     */
    public function setMinimumRepeatInterval($minimumRepeatInterval): LevelRequirementBuilder
    {
        $this->minimumRepeatInterval = $minimumRepeatInterval;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getMinimumCycle()
    {
        return $this->minimumCycle;
    }

    /**
     * @param mixed $minimumCycle
     */
    public function setMinimumCycle($minimumCycle): LevelRequirementBuilder
    {
        $this->minimumCycle = $minimumCycle;
        return $this;
    }


    public function build()
    {
        return [
            'activity_level' => $this->getActivityLevel(),
            'level' => $this->getLevel(),
            'has_health_condition' => $this->hasHealthCondition,
            'min_age' => $this->minAge,
            'max_age' => $this->maxAge,
            'min_bmi' => $this->minBmi,
            'max_bmi' => $this->maxBmi,
            'required_steps' => $this->requiredSteps,
            'required_repeat' => $this->requiredRepeat,
            'required_period' => $this->requiredPeriod,
            'required_repeat_interval' => $this->requiredRepeatInterval,
            'required_cycle' => $this->requiredCycle,
            'minimum_steps' => $this->minimumSteps,
            'minimum_repeat' => $this->minimumRepeat,
            'minimum_period' => $this->minimumPeriod,
            'minimum_repeat_interval' => $this->minimumRepeatInterval,
            'minimum_cycle' => $this->minimumCycle,
        ];
    }
}
