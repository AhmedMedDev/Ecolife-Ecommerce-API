<?php

namespace App\Traits;

use App\Models\Order;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

Trait OrderTrait 
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     * 
     *  for Auth user
     * 
     */
    public function storeOrder($request) // Secured Endpoint
    {
        $user_id = Auth::user()->id;

        $total_price = DB::table('cart_total_price')
        ->where('user_id', $user_id)
        ->select('total_price')->get()[0]->total_price;

        $order = Order::create([
            'user_id'           => $user_id,
            'total_price'       => $total_price,
            'address_id'        => $request['address_id'],
            'if_not_availble'   => $request['if_not_availble'],
            'date'              => $request['date'],
            'time'              => $request['time'],
        ]);

        return response()->json([
            'success' => true,
            'payload' => $order
        ]);
    }
}
