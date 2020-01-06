<?php

namespace App\Http\Middleware;

use Closure;

class LookForTenant
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request , Closure $next)
    {
        if(lookfortenant(explode("/" , request()->path())[1])){
            return $next($request);
        }

        dd("No such Hotel found");
        
    }
}
