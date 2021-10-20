<?php

namespace App\Http\Requests\CheckOut;

use Illuminate\Foundation\Http\FormRequest;

class PlaceOrderRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'compony_name'    => 'required|string',
            'governorate'     => 'required|string',
            'block_number'    => 'required|numeric',
            'street_address'  => 'required|string',
            'avenue'          => 'string',
            'building_number' => 'required|numeric',
            'floor'           => 'string',
            'phone'           => 'required|string|numeric',
            'additional_info' => 'string',
            'if_not_availble' => 'required|string',
            'date'            => 'required|date',
            'time'            => 'required',
        ];
    }
}
