<?php

namespace App\Http\Requests\Address;

use Illuminate\Foundation\Http\FormRequest;

class UpdateAddressRequest extends FormRequest
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
            'compony_name'    => 'string',
            'governorate'     => 'string',
            'block_number'    => 'numeric',
            'street_address'  => 'string',
            'avenue'          => 'string',
            'building_number' => 'numeric',
            'floor'           => 'string',
            'phone'           => 'string|numeric',
            'additional_info' => 'string',
        ];
    }
}
