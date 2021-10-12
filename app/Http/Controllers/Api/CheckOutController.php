<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\Address\AddressRequest;
use App\Traits\AddressTrait;
use App\Traits\ImgUpload;
use App\Traits\OrderProductTrait;
use App\Traits\OrderTrait;
use Illuminate\Support\Facades\DB;

class CheckOutController extends Controller
{
    use AddressTrait;
    use OrderTrait;
    use OrderProductTrait;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     * 
     * for auth user
     * 
     */
    public function store(AddressRequest $request) // Secured Endpoint
    {
        $request = $request->validated();

        $order_id = DB::transaction(function () use ($request) {

            $request['address_id']  = $this->storeAddress($request)->original['payload']['id'];
            
            $order_id  = $this->storeOrder($request)->original['payload']['id'];

            $this->storeOrderProduct($order_id);

            return $order_id;
        });

        return response()->json([
            'success' => true,
            'payload' => [
                'order_id' => $order_id
            ]
        ]);
    }
}
