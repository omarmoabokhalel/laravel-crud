@extends('layouts.app')
@section('title','Create Category')
@section('content')

<h2>Create Category</h2>
<form method="POST" action="{{ route('categories.store') }}">
    @csrf
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Category Name</label>
    <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>

 
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
@endsection