<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\Address\AddressRequest;
use App\Traits\AddressTrait;
use App\Traits\ImgUpload;
use App\Traits\OrderProductTrait;
use App\Traits\OrderTrait;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Cache;


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

            DB::table('carts')->where('user_id', Auth::user()->id)->delete();

            // come back to put them in observer 
            Cache::forget('order_products');
            Cache::forget('addresses');
            Cache::forget('orders');

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
