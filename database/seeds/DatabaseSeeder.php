<?php

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
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // factory(User::class, 50)->create();
        // factory(Category::class, 40)->create();
        factory(Product::class, 30)->create();
        // factory(Address::class, 30)->create();
        // factory(Order::class, 30)->create();
        // factory(Review::class, 30)->create();
        // factory(Cart::class, 30)->create();
        // factory(OrderProduct::class, 30)->create();
    }
}
