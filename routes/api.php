<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware('auth:api')->get('/meal/{id}', 'MealsController@getSingleMeal');
Route::middleware('auth:api')->post('/meal/ingredient', 'MealsController@addIngredient');

Route::prefix('v1')->namespace('API')->group(function () {
  // Login
  Route::post('/login','AuthController@postLogin');
  // Register
  Route::post('/register','AuthController@postRegister');
  // Protected with APIToken Middleware
  Route::middleware('APIToken')->group(function () {
    // Logout
    Route::post('/logout','AuthController@postLogout');
  });
});
