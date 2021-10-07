<?php

namespace App\Traits;

use App\Models\Address;

Trait AddressTrait 
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
    public function storeAddress($request) // Secured Endpoint
    {
        $address = Address::create( $request );

        return response()->json([
            'success' => true,
            'payload' => $address
        ]);
    }
}
