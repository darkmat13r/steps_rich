<?php


namespace App\Level\Constraints;


interface ILevelConstraint
{
    function validate($user);
}
