<?php


namespace App\Helpers;


use Illuminate\Http\Request;

class RequestHelper
{

    static function isPaginate(Request $request){
        return $request->has('paginate')?$request->get('paginate'):true;
    }

}
