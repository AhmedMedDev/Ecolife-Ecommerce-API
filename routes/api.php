<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

define("PAGINATION_COUNT",5);

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {

    Route::post('login', 'Auth\AuthController@login')->name('login');
    Route::post('register', 'Auth\RegisterController@register');
    Route::post('logout', 'Auth\LogOutController@logout');
    Route::post('refresh', 'Auth\AuthController@refresh');
    Route::post('me', 'Auth\AuthController@me');
    Route::post('preResetPassword', 'Auth\ResetPassController@preResetPassword');
    Route::post('confirmPIN', 'Auth\ResetPassController@confirmPIN');
    Route::post('resetPassword', 'Auth\ResetPassController@resetPassword');

});

// return to put it in new file
Route::group([

    'middleware' => [
        'api',
        'auth:api',
        'cartNotEmpty'
    ],
    'namespace' => 'Api',

], function () {

    Route::post('placeOrder', 'CheckOutController@store');
    
});

Route::group([

    'middleware' => [
        'api',
    ],
    'namespace' => 'Api',

], function () {

    Route::apiResource('contactUs', 'ContactUsController')->only(['index','store']);
    
});