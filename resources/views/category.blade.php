@extends('dashboard.layout.main')
@section('main-containers')
   <!-- ----------------------------Category Page----------------------------------- -->
   <section>
    <div class="about-banner-box">
        <div class="about-banner-content">
            <h2>Category</h2>
            <p>Home / Category</p>
        </div>
    </div>
</section>

<section class="mt-5 mb-4">
    <div class="container">
        <div class="dropdown text-end">
            <a class="btn btn-dark dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                Category filter
            </a>

            <ul class="dropdown-menu">
                @foreach ($cat as $catitem)
                <li><a class="dropdown-item" href="{{url('category/'.$catitem->slug)}}">{{$catitem->name}}</a></li>
                
                @endforeach
                <li><a class="dropdown-item" href="{{url('category')}}">All</a></li>
              
            </ul>
        </div>
        <div class="row">
  
@foreach ($categoryList as $categoryLists)
    
<div class="col-md-4 mt-3">
    <div class="catergory-box">
        <div><img
                src="{{url('uploads/'.$categoryLists->image)}}"
                alt="category-image" class="img-fluid"></div>
                <div class="category-content">
                   <h5>{{$categoryLists->title}}</h5>
                   <p>{{$categoryLists->short_content}}</p>
                   <a href="{{route('category-detail',$categoryLists->slug)}}"><div class="text-center"><button class="form-submit-btn">Learn-more</button></div></a>
                </div>
    </div>
</div>
@endforeach

      

  

      

      

        
        </div>
    </div>
</section>
@endsection