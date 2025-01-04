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