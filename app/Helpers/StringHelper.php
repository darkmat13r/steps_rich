<?php

namespace App\Helpers;

class StringHelper
{
    static function randomString($length){
        $str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyz';
        return substr(str_shuffle($str), 0, $length);
    }
}
