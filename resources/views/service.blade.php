@extends('dashboard.layout.main')
@section('main-containers')

    <!-- ----------------------------Service Page----------------------------------- -->
    <section>
        <div class="about-banner-box">
            <div class="about-banner-content">
                <h2>{{$serviceData->title}}</h2>
                <p>{{$serviceData->serviceCategory->name}}</p>
            </div>
        </div>
    </section>

    <section class="mt-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mt-3">
                    <div><img
                        src="{{url('uploads/'.$serviceData->image)}}"
                        alt="{{$serviceData->alt}}" class="img-fluid"></div>
                </div>
               

                <div class="col-md-6 mt-3">
                    @if (session()->has('message'))
                    <div class="alert alert-success">
                       
                       
                       {{session()->get('message')}}
                    </div>
                    @endif
<form action="{{route('contactus')}}" method="post" enctype="multipart/form-data">
    @csrf
                    <div class="login-container">
                        <div class="row">
                            <div class="col-md-6 mt-2">
                                <label for="" class="form-label-show">First Name <span
                                        class="span-icon-clr">*</span></label>
                                <input type="text" name="fname" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');" class="form-input-show" placeholder="First Name">
                                <span class="text-danger">
                                    @error('fname')
                                        {{$message}}
                                    @enderror

                                </span>
                            </div>
                            <div class="col-md-6 mt-2">
                                <label for="" class="form-label-show">Last Name <span
                                        class="span-icon-clr">*</span></label>
                                <input type="text" name="lname" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');" class="form-input-show" placeholder="Last Name">
                                <span class="text-danger">
                                    @error('lname')
                                        {{$message}}
                                    @enderror
                            </div>
                            <div class="col-md-6 mt-2">
                                <label for="" class="form-label-show">Mobile Number <span
                                        class="span-icon-clr">*</span></label>
                                <input type="text" name="phone" maxlength="10" oninput="this.value = this.value.replace(/[^0-9+.]/g, '').replace(/(\..*?)\..*/g, '$1');" class="form-input-show" placeholder="Mobile Number">
                                <span class="text-danger">
                                    @error('phone')
                                        {{$message}}
                                    @enderror
                            </div>
                            <div class="col-md-6 mt-2">
                                <label for="" class="form-label-show">Email Address <span
                                        class="span-icon-clr">*</span></label>
                                <input type="email" name="email"   class="form-input-show" placeholder="Email Id">
                                <span class="text-danger">
                                    @error('email')
                                        {{$message}}
                                    @enderror
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
                            </div>
                            <div class="col-md-12 mt-2">
                                <label for="" class="form-label-show">Word Count <span
                                        class="span-icon-clr">*</span></label>
                                <input type="number" name="word_count" class="form-input-show">
                                <span class="text-danger">
                                    @error('word_count')
                                        {{$message}}
                                    @enderror
                            </div>
                            <div class="col-md-6 mt-2">
                                <label for="" class="form-label-show">Upload Your Assignment <span
                                        class="span-icon-clr">*</span></label>
                                <input type="file" name="image" class="form-input-show">
                                <span class="text-danger">
                                    @error('image')
                                        {{$message}}
                                    @enderror
                            </div>
                            <div class="col-md-6 mt-2">
                                <label for="" class="form-label-show">Check out Date <span
                                        class="span-icon-clr">*</span></label>
                                <input type="date" name="check_out_date" class="form-input-show">
                                <span class="text-danger">
                                    @error('check_out_date')
                                        {{$message}}
                                    @enderror
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
                                    </span>
                            </div>
                        </div>

                        <div><button class="form-submit-btn">Submit</button></div>
                    </div>
                </form>



                </div>

            </div>
        </div>
    </section>
    <section>
        <div class="container mt-5">
            <div class="row">

                <div class="col-md-6 mt-3">
                    <div class="service-content-dtls">
                     
                        <p>{!!$serviceData->short_content!!}</p>
                     
                    </div>

                </div>
                
                
            </div>
        </div>
    </section>

    <section>
        <div class="container mt-5">
            <div class="text-center">
                <h2><b>Our Services</b></h2>
                <p>Lorem ipsum dolor sit amet.</p>
            </div>

            <div class="row">
            
           @foreach ($servicecatlist as $servicecatlists)
               
           <div class="col-md-4 mt-3">
               <div class="main-benefits-box">
                   <div><img src="{{url('uploads/'.$servicecatlists->image)}}" alt="icon" class=""></div>
                   <div class="benefits-help-box">
                       <h5>{{$servicecatlists->name}}</h5>
                       <p>{{$servicecatlists->short_des}}
                       </p>
                   </div>
               </div>
           </div>
           @endforeach
            
       
         
            </div>
        </div>
    </section>

    <section class="mt-5 mb-4">
        <div class="container-fluid">
            <div class="service-footer-show">
                <div class="row">
                    
                    <div class="col-md-6">
                        <h2 class="text-white">
                            Lorem ipsum dolor sit amet!</h2>
                        <p class="text-white">No Matter What Type Of Assignment Help You Need, We’ll Get It Written, So
                            Let’s Get Started. </p>
                    </div>
                    <div class="col-md-6 mt-3 text-center">
                        <a href="{{url('contactus')}}"><button class="service-contact-btn">Contact us</button></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection