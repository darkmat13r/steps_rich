<?php


namespace App\Helpers;


class HealthHelper
{
    static function calculateBmi($weight, $height)
    {
        $bmi = 0;
        if ($height > 0)
            $bmi = sprintf('%0.2f', ($weight / ($height * $height)));
        return $bmi;

    }
}
