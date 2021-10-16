<?php

namespace App\Http\Requests\Product;

use Illuminate\Foundation\Http\FormRequest;

class StoreProductRequest extends FormRequest
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
            'pro_name'    => 'required|string',
            'pro_des'     => 'required|string',
            'pro_details' => 'required|string',
            'price'       => 'required|between:0,99.99',
            'pics'        => 'required|array',
            'rate'        => 'required|integer|digits_between:1,5',
            'offer'       => 'required|integer|digits_between:1,100',
            'new'         => 'required|boolean',
            'status'      => 'required|boolean',
            'category_id' => 'required|exists:App\Models\Category,id',
        ];
    }
}
