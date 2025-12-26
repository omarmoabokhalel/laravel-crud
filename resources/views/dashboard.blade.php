@extends('layouts.app')

@section('title', 'Dashboard')

@section('content')
<div class="container">
    <h2 class="mb-4">Admin Dashboard</h2>

    <div class="row">

        <!-- Categories Card -->
        <div class="col-md-6">
            <div class="card shadow-sm mb-4">
                <div class="card-body text-center">
                    <h4 class="card-title">Categories</h4>
                    <p class="card-text">
                        Manage all meal categories
                    </p>
                    <a href="{{ route('categories.index') }}" class="btn btn-primary">
                        Go to Categories
                    </a>
                </div>
            </div>
        </div>

        <!-- Meals Card -->
        <div class="col-md-6">
            <div class="card shadow-sm mb-4">
                <div class="card-body text-center">
                    <h4 class="card-title">Meals</h4>
                    <p class="card-text">
                        Manage all meals and prices
                    </p>
                    <a href="{{ route('meals.index') }}" class="btn btn-success">
                        Go to Meals
                    </a>
                </div>
            </div>
        </div>

    </div>
</div>
@endsection
