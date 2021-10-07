<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Observers\ProductObserver;


class Product extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'pro_name',
        'pro_des',
        'pro_details',
        'price',
        'images',
        'rate',
        'offer',
        'new',
        'category_id',
        'status',
    ];

     /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;

    protected $casts = [
        'images' => 'array',
    ];


    protected static function boot()
    {
        parent::boot();

        Product::observe(ProductObserver::class);
    }
}
