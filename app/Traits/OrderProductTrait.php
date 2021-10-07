<?php

namespace App\Traits;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

Trait OrderProductTrait 
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
    public function storeOrderProduct($request) // Secured Endpoint
    {
        $orders = DB::table('carts')
        ->where('user_id', Auth::user()->id)
        ->select('product_id','quantity')
        ->get();

        foreach($orders as $order) $order->order_id = $request['order_id'];

        $orderProduct = DB::table('order_products')->insert($orders->toArray());

        return response()->json([
            'success' => true,
            'payload' => $orderProduct
        ]);
    }
}
