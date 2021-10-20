<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\AvailableTime\AvailableTimeRequest;
use App\Models\AvailableTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AvailableTimeController extends Controller
{
    /**
     * Create a new OrderController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('admin', ['except' => ['index']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $availableTimes = DB::table('available_times')->get();
        
        return response()->json([
            'success' => true,
            'payload' => $availableTimes
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AvailableTimeRequest $request)
    {
        $request = $request->validated();

        $availableTime = AvailableTime::create( $request );

        return response()->json([
            'success' => true,
            'payload' => $availableTime
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(AvailableTime $availableTime)
    {
        $availableTime = $availableTime->delete( $availableTime );

        if ($availableTime) return response()->json([
            'success' => true,
        ]);
    }
}
