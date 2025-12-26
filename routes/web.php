<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
Route::get('/', [HomeController::class, 'index'])->name('home');


Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::resource('categories', \App\Http\Controllers\CategoryController::class);
Route::resource('meals', \App\Http\Controllers\MealsController::class);
});

require __DIR__.'/auth.php';
