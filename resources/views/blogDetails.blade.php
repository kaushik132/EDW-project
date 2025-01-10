@extends('dashboard.layout.main')
@section('main-containers')


<center><h1>Blogs Details </h1></center>
<p>{{$blogData->blogCategory->name}}</p>

<h1>{{$blogData->title}}</h1>


<p>{!!$blogData->description!!} </p>


<img src="{{url('uploads/',$blogData->image)}}" alt="Blogs Details Image" width="20%">

@endsection