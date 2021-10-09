<?php 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::group([

    'middleware' => 'api',
    'namespace' => 'Api',

], function () {

    /**
     * Category APIs //For admin only Except index, show // Secured
     * 
     * Model, Factory, Controller, Route, Postman
     * 
     */

    //Category CRUD

    Route::apiResource('categories', 'CategoryController');

    // Get The cheapest product in each category

    Route::get('category/cheapestProduct', 'CategoryController@cheapestProduct');

});