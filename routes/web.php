<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\MealsController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});
Route::get('/categories',[CategoryController::class,'index'])->name('categories.index');
Route::get('/categories/create',[CategoryController::class, 'create'])->name('categories.create');
Route::post('/categories',[CategoryController::class,'store'])->name('categories.store');
Route::get('/categories/{category}/edit',[CategoryController::class,'edit'])->name('categories.edit');
Route::put('/categories/{category}',[CategoryController::class,'update'])->name('categories.update');
Route::delete('/categories/{category}',[CategoryController::class,'destroy'])->name('categories.destroy');

Route::get('/meals',[MealsController::class,'index'])->name('meals.index');
Route::get('/meals/create',[MealsController::class, 'create'])->name('meals.create');
Route::post('/meals',[MealsController::class,'store'])->name('meals.store');
Route::get('/meals/{meals}/edit',[MealsController::class,'edit'])->name('meals.edit');
Route::put('/meals/{meals}',[MealsController::class,'update'])->name('meals.update');
Route::delete('/meals/{meals}',[MealsController::class,'destroy'])->name('meals.destroy');