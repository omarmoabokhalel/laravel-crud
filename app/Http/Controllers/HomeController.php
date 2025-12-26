<?php

namespace App\Http\Controllers;

use App\Models\Category;

class HomeController extends Controller
{
    public function index()
    {
        // Get categories with their meals
        $categories = Category::with('meals')->get();

        return view('home', compact('categories'));
    }
}
