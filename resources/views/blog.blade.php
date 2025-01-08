@extends('dashboard.layout.main')
@section('main-containers')

<div class="dropdown text-end">
    <a class="btn btn-dark dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
        aria-expanded="false">
        Category filter
    </a>
<ul class="dropdown-menu">
    @foreach ($blogfillter as $blogfillters)
    <li><a class="dropdown-item" href="#">{{$blogfillters->name}}</a></li>
    
    @endforeach
    <li><a class="dropdown-item" href="{{url('category')}}">All</a></li>
  
</ul>
</div>



  @foreach ($blogList as $blog)
      
 
<div class="blog-post">
    <h1 class="blog-title">{{$blog->title}}</h1>
    <img
        class="blog-image"
        src="{{url('uploads/'.$blog->image)}}"
        alt="Blog Image"
        width="20%"
    />
    <h3 class="blog-description">{!!$blog->description!!}</h3>
</div>

@endforeach


@endsection