<?php


namespace App\Helpers;


class HealthHelper
{
    static function calculateBmi($weight, $height){
        return $weight/$height;
    }
}
