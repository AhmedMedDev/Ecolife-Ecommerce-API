<?php

namespace App\Http\Requests\Product;

use Illuminate\Foundation\Http\FormRequest;

class UpdateProductRequest extends FormRequest
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
            'pro_name'    => 'string',
            'pro_des'     => 'string',
            'pro_details' => 'string',
            'price'       => 'between:0,99.99',
            'pics'        => 'array',
            'rate'        => 'integer|digits_between:1,5',
            'offer'       => 'integer|digits_between:1,100',
            'new'         => 'boolean',
            'status'      => 'boolean',
            'category_id' => 'exists:App\Models\Category,id',
        ];
    }
}
