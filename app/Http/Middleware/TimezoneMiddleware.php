<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

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
        if($request->headers->has('timezone-name')){
           config('app.timezone', $request->headers->get('timezone-id'));
           date_default_timezone_set($request->headers->get('timezone-id'));
        }
        return $next($request);
    }
}
