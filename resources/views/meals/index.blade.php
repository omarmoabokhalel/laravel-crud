@extends('layouts.app')

@section('title','Meals')
    


@section('content')
    
<div>
    <a class="btn btn-success mb-3" href="{{ route('meals.create') }}">Add Meal</a>
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
            <th scope="col">Meal Name</th>
            <th scope="col">Price</th>
            <th scope="col">Category</th>
            <th scope="col">Description</th>
            <th scope="col">Image</th>
            <th scope="col">Created At</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($meals as $meal)
           <tr>
                <td>{{$meal->id}}</td>
                <td>{{$meal->name}}</td>
                <td>{{$meal->price}}</td>
                <td>{{$meal->category['name']}}</td>
                <td>{{$meal->description}}</td>
                <td>
                    <img src="{{ asset('storage/'. $meal->image) }}" width="60" alt="">
                </td>
                <td>{{$meal->created_at}}</td>
                <td>
                    <a href="{{ route('meals.edit',$meal->id) }}" class="btn btn-primary btn-sm">Edit</a>
                    <form action="{{ route('meals.destroy',$meal->id) }}" method="POST" style="display:inline;">
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