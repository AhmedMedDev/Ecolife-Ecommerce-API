<?php

namespace App\Traits;

use App\Models\OrderProduct;
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
    public function storeOrderProduct($order_id) // Secured Endpoint
    {
        $orders = DB::table('carts')
        ->where('user_id', Auth::user()->id)
        ->select('product_id','quantity')
        ->get();
        
        // Bad Methode Return to Improve it like around shop
        foreach($orders as $order)
        { 
            DB::table('order_products')->insert([
                'product_id'   => $order->product_id,
                'quantity'     => $order->quantity,
                'order_id'     => $order_id,
            ]);
        }

        return response()->json(['success' => true]);
    }
}
