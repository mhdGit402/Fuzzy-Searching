<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;


Route::get('/', [HomeController::class, 'index']);

Route::get('/user/create', [UserController::class, 'index']);
Route::post('/user/create', [UserController::class, 'store']);

Route::get('/users', [UserController::class, 'showUsers']);

Route::get('/users/duplicate', [UserController::class, 'showDuplicateUsers']);

Route::delete('/users/remove/{id}', [UserController::class, 'removeUser']);