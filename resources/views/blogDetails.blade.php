@extends('dashboard.layout.main')
@section('main-containers')
<style>
.blog-date-post {
    position: absolute;
    background-color: #FFFFFF;
    padding: 7px 15px;
    border-radius: 5px;
    top: 2px;
    left: 2px;
    color:#fa0009;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    font-size: 15px;
    font-weight: 500;
  }
  .related-blog-box{
    background-color: #fff;
    box-shadow: rgba(0, 0, 0, 0.15) 1.95px 1.95px 2.6px;
    padding:10px;
    width: 100%;
    border-radius: 7px;
    border:solid 1px rgb(199, 199, 199);
  }
  .related-blog-box h3{
    color:var(--primary-color);
    font-size: 23px;
    font-weight: 400;
  }
  .related-blog-box a{
    color:#313131;
    text-decoration: none;
  }
  .related-blog-box a:hover{
    color:var(--secondary-color);
    text-decoration:underline;
  }
  .related-blog-box div{
    margin-top:7px;
    font-size: 16.5px;
    font-weight: 400;
  }
</style>
 <!-- ----------------------------Blog Page----------------------------------- -->
 <section>
    <div class="about-banner-box">
        <div class="about-banner-content">
            <h2>Blog details</h2>
            <p>Home / {{$blogData->blogCategory->name}}</p>
        </div>
    </div>
</section>


<section class="mt-4 mb-4">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 mt-3">
                <div class="category-content-detls">
                    <div class="mb-4"><img
                            src="{{url('uploads/',$blogData->image)}}"
                            alt="image" class="img-fluid"></div>
                    <h2>{{$blogData->title}}</h2>
                    <p>{!!$blogData->description!!}</p>
                   
                   
                    
                      
                    <div class="Share-icon-show">
                        <p class="mt-2">Share:</p>
                        @if ($blogData->twitter != null)
                            
                        <a href="#"><i class="fab fa-x-twitter ms-2 text-dark fs-5"></i></a>
                        @endif
                        @if ($blogData->facebook != null)
                            
                        <a href="#"><i class="fab fa-facebook-f ms-2 text-dark fs-5"></i></a>
                        @endif
                        @if ($blogData->instagram != null)
                            
                        <a href="#"><i class="fab fa-instagram ms-2 text-dark fs-5"></i></a>
                        @endif
                        @if ($blogData->youtube != null)
                            
                        <a href="#"><i class="fab fa-youtube ms-2 text-dark fs-5"></i></a>
                        @endif
                        @if ($blogData->linkedin != null)
                            
                        <a href="#"><i class="fab fa-linkedin-in ms-2 text-dark fs-5"></i></a>
                        @endif
                    </div>
                </div>
            </div>
            <div class="col-md-4 mt-3">
                @if (session()->has('message'))
                    <div class="alert alert-success">
                       
                       
                       {{session()->get('message')}}
                    </div>
                        
                    @endif
                <form action="{{route('contactus')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                <div class="login-container">
                    <h5 class="text-center mb-3" style="color:#fa0009">Contact Form</h5>
                    <div class="row">
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">First Name <span
                                    class="span-icon-clr">*</span></label>
                            <input type="text" name="fname" class="form-input-show" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');" placeholder="First Name">
                            <span class="text-danger">
                                @error('fname')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Last Name <span
                                    class="span-icon-clr">*</span></label>
                            <input type="text" name="lname" class="form-input-show" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');" placeholder="Last Name">
                            <span class="text-danger">
                                @error('lname')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Mobile Number <span
                                    class="span-icon-clr">*</span></label>
                            <input type="text" name="phone" maxlength="10" oninput="this.value = this.value.replace(/[^0-9+.]/g, '').replace(/(\..*?)\..*/g, '$1');" class="form-input-show" placeholder="Mobile Number">
                            <span class="text-danger">
                                @error('phone')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Email Address <span
                                    class="span-icon-clr">*</span></label>
                            <input type="email" name="email" class="form-input-show" placeholder="Email Id">
                            <span class="text-danger">
                                @error('email')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Select <span
                                    class="span-icon-clr">*</span></label>
                            <select name="select" id="" class="form-input-show">
                                <option value="" readonly>select</option>
                                <option value="Accounting & Finance">Accounting & Finance</option>
                            </select>
                        </div>

                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Deadline <span
                                    class="span-icon-clr">*</span></label>
                            <input type="date" name="deadline" class="form-input-show">
                            <span class="text-danger">
                                @error('deadline')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>
                        <div class="col-md-12 mt-2">
                            <label for="" class="form-label-show">Word Count <span
                                    class="span-icon-clr">*</span></label>
                            <input type="number" name="word_count" class="form-input-show">
                            <span class="text-danger">
                                @error('word_count')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Upload Your Assignment <span
                                    class="span-icon-clr">*</span></label>
                            <input type="file" name="image" class="form-input-show">
                            <span class="text-danger">
                                @error('image')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Check out Date <span
                                    class="span-icon-clr">*</span></label>
                            <input type="date" name="check_out_date" class="form-input-show">
                            <span class="text-danger">
                                @error('check_out_date')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>

                        <div class="col-md-12 mt-2">
                            <label for="" class="form-label-show">Message <span
                                    class="span-icon-clr">*</span></label>
                            <textarea name="message" id="" cols="10" rows="4" placeholder="Your Message"
                                class="form-input-show"></textarea>
                            <span class="text-danger">
                                @error('message')
                                 {{$message}}
                                @enderror
                        </div>
                    </div>

                    <div><button class="form-submit-btn">Submit</button></div>
                </div>
            </form>


                <div class="login-container mt-3">
                    <h5 class="text-center mb-4" style="color:#fa0009"><b>Popular Blog</b></h5>
@foreach ($resentBlog as $requentBlogs)
    
<a href="{{url('blog-detail/'.$requentBlogs->slug)}}" class="text-decoration-none">
    <p class="our-categroy-link">&#8594; {{$requentBlogs->title}}</p>
</a>
@endforeach

                </div>

            </div>
        </div>
    </div>
</section>

<section class="mb-4">
    <div class="container-fluid">
        <h2 class="text-center" style="color:#fa0009">Related Blogs</h2>
        <div class="row">
            
@foreach ($letest_blog as $letest_blogs)
    
<div class="col-md-3 mt-3">
    <div class="catergory-box">
        <div style="position: relative;">
            <img src="{{url('uploads/'.$letest_blogs->image)}}"
            alt="{{$letest_blogs->alt}}" class="img-fluid">
            <div class="blog-date-post">{{ $letest_blogs->created_at->format('d M Y') }}</div>
                    </div>
                    <div class="category-content">
                        <h5>{{$letest_blogs->title}}</h5>
                        <p>{{$letest_blogs->short_content}}</p>
                            <a href="{{url('blog-detail/'.$letest_blogs->slug)}}">
                                <div class="text-center"><button class="form-submit-btn">Read more</button>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                
                @endforeach
     
        </div>
    </div>
</section>

@endsection