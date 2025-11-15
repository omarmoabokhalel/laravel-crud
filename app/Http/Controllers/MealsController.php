<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Meals;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class MealsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $meals = Meals::latest()->get();
        return view('meals.index',['meals'=>$meals]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::all();
        return view('meals.create',['categories'=>$categories]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'=>'required',
            'description'=>'required',
            'price'=>'required|numeric',
            'category_id'=>'required|exists:categories,id',
            'image'=>'image|mimes:jpg,png,jpeg|max:2048'
        ]);
        
        $image = $request->file('image')?->store('meals','public');
        Meals::create([
            'category_id'=>$request->category_id ,
            'name'=>$request->name,
            'description'=>$request->description,
            'price'=>$request->price,
            'image'=>$image
        ]);
        session()->flash('success', 'Meal added Success');
        return to_route('meals.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(meals $meals)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(meals $meals)
    {
        $categories = Category::all();
        return view('meals.edit',['meal'=>$meals, 'categories'=>$categories]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, meals $meals)
    {
        $request->validate([
            'name'=>'required',
            'description'=>'required',
            'price'=>'required|numeric',
            'category_id'=>'required|exists:categories,id',
            'image'=>'image|mimes:jpg,png,jpeg|max:2048'
        ]);
        
        if($request->hasFile('image')){
            Storage::disk('public')->delete($meals->image);
            $image = $request->file('image')->store('meals','public');
            $meals->image = $image;
        }

        $meals->update([
            'category_id'=>$request->category_id ,
            'name'=>$request->name,
            'description'=>$request->description,
            'price'=>$request->price,
        ]);
        session()->flash('success', 'Meal updated Success');
        return to_route('meals.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(meals $meals)
    {
        Storage::disk('public')->delete($meals->image);
        $meals->delete();
        session()->flash('success','Meal Deleted Successfully');
        return to_route('meals.index');
    }
}
