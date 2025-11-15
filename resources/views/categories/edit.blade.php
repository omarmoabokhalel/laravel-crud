@extends('layouts.app')
@section('title','Edit Category')
@section('content')

<h2>Edit Category</h2>
<form method="POST" action="{{ route('categories.update',$category->id) }}">
    @csrf
    @method('PUT')
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Category Name</label>
    <input type="text" name="name" value="{{ old('name', $category->name ?? "") }}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>

  <button type="submit" class="btn btn-primary">Update</button>
</form>
@endsection