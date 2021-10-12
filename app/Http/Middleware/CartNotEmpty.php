<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class CartNotEmpty
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        if(!DB::table('carts')->where('user_id', Auth::user()->id)->count()) 
        {
            return response()->json([
                'success' => false,
                'payload' => "Can't place order with empty cart",
            ],400);
        }

        return $next($request);
    }
}
