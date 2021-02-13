<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class TimezoneMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        Log::debug("TimeZone  " . $request->headers->get('timezone-id') . " : User Id : ".Auth::id() );
        if($request->headers->has('timezone-id')){
            $user = Auth::user();
            $timezone = $request->headers->get('timezone-id');

           if(Auth::user()->timezone != $timezone){

               $user->timezone = $timezone;
               $user->save();
           }
            config('app.timezone',$user->timezone?$user->timezone: $timezone);
            date_default_timezone_set($user->timezone?$user->timezone: $timezone);
        }
        return $next($request);
    }
}
