@extends('layouts.user')

@section('title', 'Home')

@section('content')
<div class="container py-4">

    <!-- Hero -->
    <div class="text-center mb-5">
        <h1 class="fw-bold">Discover Our Menu</h1>
        <p class="text-muted">Fresh meals made with love</p>
    </div>

    <!-- Categories Filter -->
    <div class="mb-4 text-center">
        <ul class="nav nav-pills justify-content-center gap-2">

            <li class="nav-item">
                <button class="nav-link active category-btn" data-category="all">
                    All
                </button>
            </li>

            @foreach($categories as $category)
                <li class="nav-item">
                    <button
                        class="nav-link category-btn"
                        data-category="{{ $category->id }}">
                        {{ $category->name }}
                    </button>
                </li>
            @endforeach

        </ul>
    </div>

    <!-- Meals By Category -->
    @foreach($categories as $category)
        @if($category->meals->count())
            <section
                class="category-section mb-5"
                data-category="{{ $category->id }}">

                <h3 class="mb-4 fw-semibold text-center">
                    {{ $category->name }}
                </h3>

                <div class="row g-4">
                    @foreach($category->meals as $meal)
                        <div class="col-md-4 col-lg-3">
                            <div class="card meal-card h-100 border-0 shadow-sm">

                                <img
                                    src="{{ asset('storage/' . $meal->image) }}"
                                    class="card-img-top"
                                    style="height:180px; object-fit:cover;"
                                    alt="{{ $meal->name }}"
                                >

                                <div class="card-body d-flex flex-column">
                                    <h5 class="fw-bold">
                                        {{ $meal->name }}
                                    </h5>

                                    <p class="text-muted small mb-3">
                                        {{ Str::limit($meal->description, 70) }}
                                    </p>

                                    <div class="mt-auto d-flex justify-content-between align-items-center">
                                        <span class="fw-bold text-success">
                                            {{ $meal->price }} EGP
                                        </span>

                                        <button class="btn btn-outline-dark btn-sm">
                                            Order
                                        </button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    @endforeach
                </div>

            </section>
        @endif
    @endforeach

</div>

<!-- Category Filter Script -->
<script>
    document.addEventListener('DOMContentLoaded', function () {

        const buttons = document.querySelectorAll('.category-btn');
        const sections = document.querySelectorAll('.category-section');

        buttons.forEach(btn => {
            btn.addEventListener('click', function () {

                // Toggle active button
                buttons.forEach(b => b.classList.remove('active'));
                this.classList.add('active');

                const category = this.dataset.category;

                sections.forEach(section => {
                    if (category === 'all' || section.dataset.category === category) {
                        section.style.display = 'block';
                    } else {
                        section.style.display = 'none';
                    }
                });
            });
        });

    });
</script>
@endsection
