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
                <li><a class="dropdown-item" href="#">Filter 1</a></li>
                <li><a class="dropdown-item" href="#">Filter 2</a></li>
                <li><a class="dropdown-item" href="#">Filter 3</a></li>
            </ul>
        </div>
        <div class="row">
            <div class="col-md-4 mt-3">
                <div class="catergory-box">
                    <div><img
                            src="https://upload.tanca.io/api/upload/news/63254db1ffc72ce6a1043222?name=63254db1ae7a4jCac3690937-hrm-software-1.png"
                            alt="category-image" class="img-fluid"></div>
                            <div class="category-content">
                               <h5>Lorem ipsum dolor sit amet consectetur adipisicing.</h5>
                               <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempora, fugit illo. Atque illum porro hic.</p>
                               <a href="{{url('category-detail')}}"><div class="text-center"><button class="form-submit-btn">Learn-more</button></div></a>
                            </div>
                </div>
            </div>

            <div class="col-md-4 mt-3">
                <div class="catergory-box">
                    <div><img
                            src="https://upload.tanca.io/api/upload/news/63254db1ffc72ce6a1043222?name=63254db1ae7a4jCac3690937-hrm-software-1.png"
                            alt="category-image" class="img-fluid"></div>
                            <div class="category-content">
                               <h5>Lorem ipsum dolor sit amet consectetur adipisicing.</h5>
                               <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempora, fugit illo. Atque illum porro hic.</p>
                               <a href="{{url('category-detail')}}"><div class="text-center"><button class="form-submit-btn">Learn-more</button></div></a>
                            </div>
                </div>
            </div>

            <div class="col-md-4 mt-3">
                <div class="catergory-box">
                    <div><img
                            src="https://upload.tanca.io/api/upload/news/63254db1ffc72ce6a1043222?name=63254db1ae7a4jCac3690937-hrm-software-1.png"
                            alt="category-image" class="img-fluid"></div>
                            <div class="category-content">
                               <h5>Lorem ipsum dolor sit amet consectetur adipisicing.</h5>
                               <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempora, fugit illo. Atque illum porro hic.</p>
                              <a href="{{url('category-detail')}}"><div class="text-center"><button class="form-submit-btn">Learn-more</button></div></a>
                            </div>
                </div>
            </div>

            <div class="col-md-4 mt-3">
                <div class="catergory-box">
                    <div><img
                            src="https://upload.tanca.io/api/upload/news/63254db1ffc72ce6a1043222?name=63254db1ae7a4jCac3690937-hrm-software-1.png"
                            alt="category-image" class="img-fluid"></div>
                            <div class="category-content">
                               <h5>Lorem ipsum dolor sit amet consectetur adipisicing.</h5>
                               <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempora, fugit illo. Atque illum porro hic.</p>
                              <a href="{{url('category-detail')}}"><div class="text-center"><button class="form-submit-btn">Learn-more</button></div></a>
                            </div>
                </div>
            </div>

            <div class="col-md-4 mt-3">
                <div class="catergory-box">
                    <div><img
                            src="https://upload.tanca.io/api/upload/news/63254db1ffc72ce6a1043222?name=63254db1ae7a4jCac3690937-hrm-software-1.png"
                            alt="category-image" class="img-fluid"></div>
                            <div class="category-content">
                               <h5>Lorem ipsum dolor sit amet consectetur adipisicing.</h5>
                               <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempora, fugit illo. Atque illum porro hic.</p>
                              <a href="{{url('category-detail')}}"><div class="text-center"><button class="form-submit-btn">Learn-more</button></div></a>
                            </div>
                </div>
            </div>

            <div class="col-md-4 mt-3">
                <div class="catergory-box">
                    <div><img
                            src="https://upload.tanca.io/api/upload/news/63254db1ffc72ce6a1043222?name=63254db1ae7a4jCac3690937-hrm-software-1.png"
                            alt="category-image" class="img-fluid"></div>
                            <div class="category-content">
                               <h5>Lorem ipsum dolor sit amet consectetur adipisicing.</h5>
                               <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempora, fugit illo. Atque illum porro hic.</p>
                              <a href="{{url('category-detail')}}"><div class="text-center"><button class="form-submit-btn">Learn-more</button></div></a>
                            </div>
                </div>
            </div>

            <div class="col-md-4 mt-3">
                <div class="catergory-box">
                    <div><img
                            src="https://upload.tanca.io/api/upload/news/63254db1ffc72ce6a1043222?name=63254db1ae7a4jCac3690937-hrm-software-1.png"
                            alt="category-image" class="img-fluid"></div>
                            <div class="category-content">
                               <h5>Lorem ipsum dolor sit amet consectetur adipisicing.</h5>
                               <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempora, fugit illo. Atque illum porro hic.</p>
                              <a href="{{url('category-detail')}}"><div class="text-center"><button class="form-submit-btn">Learn-more</button></div></a>
                            </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection