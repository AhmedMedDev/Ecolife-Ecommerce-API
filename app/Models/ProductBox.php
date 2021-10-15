<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductBox extends Model
{
    protected $table = 'product_box';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'pro_id',
        'pro_name',
        'pro_des',
        'pro_details',
        'pro_price',
        'new_price',
        'pro_images',
        'pro_rate',
        'new',
        'offer',
        'pro_status',
        'category_id',
        'cat_name',
        'cat_header',
        'cat_status',
    ];

    protected $casts = [
        'pro_images' => 'array',
    ];

     /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;
}
