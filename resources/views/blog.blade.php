@extends('dashboard.layout.main')
@section('main-containers')

<!-- ----------------------------Blog Page----------------------------------- -->
<section>
    <div class="about-banner-box">
        <div class="about-banner-content">
            <h2>Blog</h2>
            <p>Home / Blog</p>
        </div>
    </div>
</section>

<section class="mt-5 mb-4">
    <div class="container">
        <!-- <div class="dropdown text-end">
            <a class="btn btn-dark dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                Blog Filter
            </a>

            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Filter 1</a></li>
                <li><a class="dropdown-item" href="#">Filter 2</a></li>
                <li><a class="dropdown-item" href="#">Filter 3</a></li>
            </ul>
        </div> -->
        <div class="row">
            <div class="col-md-9">
                <div class="row">

                    @foreach ($blogList as $blog)
                    <div class="col-md-6 mt-3">
                        <div class="catergory-box">
                            <div style="position: relative;">
                                <img src="{{url('uploads/'.$blog->image)}}"
                                    alt="{{$blog->alt}}" class="img-fluid">
                                <div class="blog-date-post">{{ $blog->created_at->format('d M Y') }}
                                </div>
                            </div>
                            <div class="category-content">
                                <h5>{{$blog->title}}</h5>
                                <p>{{$blog->short_content}}</p>
                                <a href="{{url('blog-detail/'.$blog->slug)}}">
                                    <div class="text-center"><button class="form-submit-btn">Read more</button>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    @endforeach

                   

        
         
                </div>
            </div>

            <div class="col-md-3 mt-3">
                <div class="related-blog-box">
                    <h3>Related Blogs</h3>
                    @foreach ($blogfillter as $blogfillters)
                    <a href="{{url('blog/'.$blogfillters->slug)}}"><div>{{$blogfillters->name}}(40)</div></a>
                    @endforeach
                    <a href="{{url('blog')}}"><div>All</div></a>
                    
                </div>
            </div>

        </div>
    </div>
</section>


@endsection