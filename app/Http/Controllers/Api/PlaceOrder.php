<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Address\AddressRequest;
use App\Traits\AddressTrait;
use App\Traits\OrderProductTrait;
use App\Traits\OrderTrait;
use Illuminate\Http\Request;

class PlaceOrder extends Controller
{
    use AddressTrait;
    use OrderTrait;
    use OrderProductTrait;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     * 
     * for admin only 
     * 
     */
    public function index(AddressRequest $request) // Secured Endpoint
    {
        $request = $request->validated();

        $request['address_id']  = $this->AddressTrait->store($request)->original['address']['id'];

        $request['order_id']    = $this->OrderTrait->store($request)->original['order']['id'];

        $this->OrderProductTrait->store($request);

        return response()->json([
            'success' => true,
            'payload' => [
                'order_id' => $request['order_id']
            ]
        ]);
    }
}
