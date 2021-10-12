<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class UserCanReview
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
        $isExist = DB::table('user_purchases')->where([
            ['user_id', '=', Auth::user()->id],
            ['product_id', '=', $request->product_id]
        ])->count();
 
        if ($isExist == 0)
        {
            return response()->json([
                'success' => false,
                'payload' => "unauthorized, for specific users only",
            ],401);
        }

        return $next($request);
    }
}
