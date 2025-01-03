@extends('dashboard.layout.main')
@section('main-containers')

 <!-- --------------------------------Category Details------------------------------------ -->
 <section>
    <div class="about-banner-box">
        <div class="about-banner-content">
            <h2>Category Details</h2>
        </div>
    </div>
</section>

<section class="mt-4 mb-4">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 mt-3">
                <div class="category-content-detls">
                    <div class="mb-4"><img src="{{url('uploads/'.$categoryData->image)}}" alt="{{$categoryData->alt}}"
                        class="img-fluid"></div>
                <h2>{{$categoryData->title}}</h2>
                <p>{!!$categoryData->description!!}</p>
                   
                    <div class="Share-icon-show">
                      <p class="mt-2">Share:</p>
                      @if ($categoryData->twitter != null)
                      <a href="{{$categoryData->twitter}}"><i class="fab fa-x-twitter ms-2 text-dark fs-5"></i></a>
                          
                      @endif
                      @if ($categoryData->facebook != null)
                          
                      <a href="{{$categoryData->facebook}}"><i  class="fab fa-facebook-f ms-2 text-dark fs-5"></i></a>
                      @endif
                      @if ($categoryData->whatapp != null)
                          
                      <a href="{{$categoryData->whatapp}}"><i class="fa-brands fa-whatsapp ms-2 text-dark fs-5"></i></a>
                      @endif
                      @if ($categoryData->youtube != null)
                          
                      <a href="{{$categoryData->youtube}}"><i class="fab fa-youtube ms-2 text-dark fs-5"></i></a>
                      @endif

                      @if ($categoryData->linkedin != null)
                          
                      <a href="{{$categoryData->linkedin}}"><i class="fab fa-linkedin-in ms-2 text-dark fs-5"></i></a>
                      @endif
                    </div>
                </div>
            </div>
            <div class="col-md-4 mt-3">
                <div class="login-container">
                    <div class="row">
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">First Name <span
                                    class="span-icon-clr">*</span></label>
                            <input type="text" class="form-input-show" placeholder="First Name">
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Last Name <span
                                    class="span-icon-clr">*</span></label>
                            <input type="text" class="form-input-show" placeholder="Last Name">
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Mobile Number <span
                                    class="span-icon-clr">*</span></label>
                            <input type="text" class="form-input-show" placeholder="Mobile Number">
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Email Address <span
                                    class="span-icon-clr">*</span></label>
                            <input type="text" class="form-input-show" placeholder="Email Id">
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Select <span
                                    class="span-icon-clr">*</span></label>
                            <select name="" id="" class="form-input-show">
                                <option value="" readonly>select</option>
                                <option value="">Accounting & Finance</option>
                            </select>
                        </div>

                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Deadline <span
                                    class="span-icon-clr">*</span></label>
                            <input type="date" class="form-input-show">
                        </div>
                        <div class="col-md-12 mt-2">
                            <label for="" class="form-label-show">Word Count <span
                                    class="span-icon-clr">*</span></label>
                            <input type="number" class="form-input-show">
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Upload Your Assignment <span
                                    class="span-icon-clr">*</span></label>
                            <input type="file" class="form-input-show">
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Check out Date <span
                                    class="span-icon-clr">*</span></label>
                            <input type="date" class="form-input-show">
                        </div>

                        <div class="col-md-12 mt-2">
                            <label for="" class="form-label-show">Message <span
                                    class="span-icon-clr">*</span></label>
                            <textarea name="" id="" cols="10" rows="4" placeholder="Your Message"
                                class="form-input-show"></textarea>
                        </div>
                    </div>

                    <div><button class="form-submit-btn">Submit</button></div>
                </div>
                <div class="login-container mt-3">
                    <h5 class="text-center mb-4" style="color:#fa0009"><b>Popular Category</b></h5>
                   
                
                   @foreach ($catCategory as $category)
                       
                   <a href="{{url('category/'.$category->slug)}}" class="text-decoration-none">
                       <p class="our-categroy-link">&#8594; {{$category->name}}</p>
                   </a>
                   @endforeach
                </div>

                <div class="login-container mt-3">
                    <h5 class="text-center mb-4" style="color:#fa0009"><b>Popular Category</b></h5>
                    <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div>
                                    <div class="category-icon-size"><img
                                            src="https://cdn-icons-png.flaticon.com/512/11772/11772904.png"
                                            class="img-fluid" alt="icon"></div>
                                    <h5 class="text-center mt-3">Jon Luen</h5>
                                    <p class="text-center mt-2">Lorem ipsum dolor sit amet consectetur, adipisicing
                                        elit. Voluptas non laborum quia placeat!</p>
                                </div>

                            </div>
                            @foreach ($categorylist as $itemcat)
                            <div class="carousel-item ">
                                <div>
                                    <div class="category-icon-size"><img
                                            src="https://cdn-icons-png.flaticon.com/512/11772/11772904.png"
                                            class="img-fluid" alt="icon"></div>
                                    <h5 class="text-center mt-3">{{$itemcat->title}}</h5>
                                    <p class="text-center mt-2">{{$itemcat->short_content}}</p>
                                </div>

                            </div>
                                
                            @endforeach
                    
                 
                        </div>
                        <button class="carousel-control-prev" type="button"
                            data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button"
                            data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection