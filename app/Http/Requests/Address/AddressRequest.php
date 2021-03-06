<?php

namespace App\Http\Requests\Address;

use Illuminate\Foundation\Http\FormRequest;

class AddressRequest extends FormRequest
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
        ];
    }
}
