@extends('layouts.app')
@section('title','Create Meal')
@section('content')

<h2>Create Meal</h2>
<form method="POST" action="{{ route('meals.store') }}" enctype="multipart/form-data">
    @csrf
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label"> Name</label>
    <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
    <label for="exampleInputEmail1" class="form-label"> Price</label>
    <input type="number" name="price" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
    <label for="exampleInputEmail1" class="form-label"> Category</label>
    <select class=" form-select" name="category_id" id="">
      @foreach ($categories as $category)
          <option value="{{ $category->id }}">{{ $category->name }}</option>
      @endforeach
    </select>
    <label for="exampleInputEmail1" class="form-label"> Description</label>
    <input type="text" name="description" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
    <label for="exampleInputEmail1" class="form-label"> Image</label>
    <input type="file" name="image" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>

 
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
@endsection