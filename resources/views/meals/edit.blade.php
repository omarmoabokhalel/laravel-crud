@extends('layouts.app')
@section('title','Create Meal')
@section('content')

<h2>Create Meal</h2>
<form method="POST" action="{{ route('meals.update',$meal->id) }}" enctype="multipart/form-data">
    @csrf
    @method('PUT')
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label"> Name</label>
    <input type="text" value="{{ old('name',$meal->name ?? "") }}" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
    <label for="exampleInputEmail1" class="form-label"> Price</label>
    <input type="number" value="{{ old('price',$meal->price ?? "") }}" name="price" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
    <label for="exampleInputEmail1" class="form-label"> Category</label>
    <select class=" form-select" name="category_id" id="">
      @foreach ($categories as $category)
          <option value="{{ $category->id }}" {{ $category->id == $meal->category_id ? 'selected' : '' }}>{{ $category->name }}</option>
      @endforeach
    </select>
    <label for="exampleInputEmail1" class="form-label"> Description</label>
    <input type="text" value="{{ old('description',$meal->description ?? "") }}" name="description" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
    <label for="exampleInputEmail1" class="form-label"> Image</label>
    <input type="file" name="image" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <img src="{{ asset('storage/'. $meal->image) }}" width="80" alt="">
  </div>

 
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
@endsection