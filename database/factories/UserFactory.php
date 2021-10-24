<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Address;
use App\Models\Cart;
use App\Models\Category;
use App\Models\Color;
use App\Models\Favorite;
use App\Models\Offer;
use App\Models\Order;
use App\Models\OrderProduct;
use App\Models\Product;
use App\Models\ProductColor;
use App\Models\ProductImage;
use App\Models\ProductSize;
use App\Models\Review;
use App\Models\Size;
use App\User;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(User::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'email_verified_at' => now(),
        'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
        'remember_token' => Str::random(10),
    ];
});

$factory->define(Category::class, function (Faker $faker) {
    return [
        'cat_name' => $faker->name,
        'cat_header' => $faker->name,
        'status'        => $faker->boolean(),
    ];
});

$factory->define(Product::class, function (Faker $faker) {
    return [
        'pro_name'      => $faker->name,
        'pro_des'       => $faker->sentence(6,true),
        'pro_details'   => $faker->text,
        'price'         => $faker->numberBetween(350,5000),
        'images'        => [$faker->imageUrl(283,241),$faker->imageUrl(283,241)],
        'rate'          => $faker->numberBetween(1,5),
        'offer'         => $faker->numberBetween(5,50),
        'new'           => $faker->boolean(),
        'category_id'   => $faker->numberBetween(43,57),
        'status'        => $faker->boolean(),
    ];
});

$factory->define(Review::class, function (Faker $faker) {
    return [
        're_des'        => $faker->paragraph,
        're_rate'       => $faker->numberBetween(1,5),
        'product_id'    => $faker->numberBetween(1,20),
        'user_id'       => $faker->numberBetween(1,30),
    ];
});


$factory->define(Cart::class, function (Faker $faker) {
    return [
        'product_id'    => $faker->numberBetween(1,20),
        'user_id'       => $faker->numberBetween(1,30),
        'quantity'      => $faker->numberBetween(1,10),
    ];
});


$factory->define(Address::class, function (Faker $faker) {
    return [
        'compony_name'          => $faker->company,
        'governorate'           => $faker->country,
        'block_number'          => $faker->buildingNumber,
        'street_address'        => $faker->streetName,
        'avenue'                => $faker->city,
        'building_number'       => $faker->buildingNumber,
        'floor'                 => $faker->city,
        'phone'                 => $faker->phoneNumber,
    ];
});

$factory->define(Order::class, function (Faker $faker) {
    return [
        'user_id'           => $faker->numberBetween(1,30),
        'date'              => $faker->date,
        'total_price'       => $faker->numberBetween(50,200),
        'address_id'        => $faker->numberBetween(1,20),
    ];
});

$factory->define(OrderProduct::class, function (Faker $faker) {
    return [
        'product_id' => $faker->numberBetween(1,30),
        'quantity'   => $faker->randomDigit,
        'order_id'   => $faker->numberBetween(1,30),
    ];
});