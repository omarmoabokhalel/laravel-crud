@extends('layouts.app')

@section('title','Categories')
    


@section('content')
    
<div>
    <a class="btn btn-success mb-3" href="{{ route('categories.create') }}">Add Category</a>
</div>
@if (session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
@endif
<table class="table table-striped">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Category Name</th>
            <th scope="col">Description</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($categories as $category)
           <tr>
                <td>{{$category->id}}</td>
                <td>{{$category->name}}</td>
                <td>{{$category->slug}}</td>
                <td>
                    <a href="{{ route('categories.edit',$category->id) }}" class="btn btn-primary btn-sm">Edit</a>
                    <form action="{{ route('categories.destroy',$category->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button onclick="return confirm('Delete?')" type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>
                </td>
        </tr> 
        @endforeach
        
    </tbody>
</table>


@endsection