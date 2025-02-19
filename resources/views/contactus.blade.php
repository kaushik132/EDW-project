@extends('dashboard.layout.main')
@section('main-containers')

     <!-- ----------------------------Contact us----------------------------------- -->
     <section>
        <div class="about-banner-box">
            <div class="about-banner-content">
                <h2>Contact us</h2>
                <p>Home / Contact us</p>
            </div>
        </div>
    </section>

    <section class="mt-4 mb-4">
        <div class="container">
            <div class="row">
                <div class="col-md-5 mt-3">
                  
                    <h3 style="color:#fa0009">Branch Details</h3>
                    <h6>You can also get in touch with our company through phone, email or online social media to get your assignment help login.</h6>
                  
                <div class="d-flex align-items-center mt-4">
                    <div class="contact-icon-show"><i class="fa-solid fa-location-dot"></i></div>
                    <h6 class="ms-3">Jaipur, Rajasthan</h6>
                </div>

                <div class="d-flex align-items-center mt-4">
                    <div class="contact-icon-show"><i class="fa-solid fa-phone"></i></div>
                    <h6 class="ms-3">+91 - 9876543210</h6>
                </div>

                <div class="d-flex align-items-center mt-4">
                    <div class="contact-icon-show"><i class="fa-solid fa-envelope"></i></div>
                    <h6 class="ms-3">support@gmail.com</h6>
                </div>

                <h5 class="mt-4">Account Details :</h5>
                 <p>Bank Name - State bank of india</p>
                 <p>Name of account holder - Jhon Doe</p>
                 <p>Account number- 2346789022</p>
                 <p>Type of account- saving account</p>
                 <p>IFSC CODE- SBIN00000</p>

                 <hr>
                <address>
                    Bank address<br>SBI Main Market <br>Jaipur <br>Pin Code - 302020
                </address>
                  <h6 style="color:#fa0009">Google Pay : +91 - 9876543210</h6>
                  <h6 style="color:#fa0009">Phone PE : +91 - 9876543210</h6>
                  <hr>
                  <p>FOR NORMAL CALL :- +91 - 9876543210</p>
                  <p>FOR WHATSAPP :- +91 - 9876543210</p>
                </div>

                <div class="col-md-7 mt-3">
                    @if (session()->has('message'))
                    <div class="alert alert-success">
                       
                       
                       {{session()->get('message')}}
                    </div>
                        
                    @endif
                    <form action="{{route('contactus')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                  <div class="login-container">
                    <div class="row">
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">First Name <span class="span-icon-clr">*</span></label>
                            <input type="text" name="fname" class="form-input-show" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');" placeholder="First Name">
                            <span class="text-danger">
                                @error('fname')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Last Name <span class="span-icon-clr">*</span></label>
                            <input type="text" name="lname" class="form-input-show" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');" placeholder="Last Name">
                            <span class="text-danger">
                                @error('lname')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Mobile Number <span class="span-icon-clr">*</span></label>
                            <input type="text" name="phone" maxlength="10" oninput="this.value = this.value.replace(/[^0-9+.]/g, '').replace(/(\..*?)\..*/g, '$1');" class="form-input-show" placeholder="Mobile Number">
                            <span class="text-danger">
                                @error('phone')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Email Address <span class="span-icon-clr">*</span></label>
                            <input type="email" name="email" class="form-input-show" placeholder="Email Id">
                            <span class="text-danger">
                                @error('email')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>
                      <div class="col-md-6 mt-2">
                        <label for="" class="form-label-show">Select <span class="span-icon-clr">*</span></label>
                        <select name="select" id="" class="form-input-show">
                            <option value="" readonly>select</option>
                            <option value="Accounting & Finance">Accounting & Finance</option>
                        </select>

                      </div>
    
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Deadline <span class="span-icon-clr">*</span></label>
                            <input type="date" name="deadline" class="form-input-show">
                            <span class="text-danger">
                                @error('deadline')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>
                        <div class="col-md-12 mt-2">
                            <label for="" class="form-label-show">Word Count <span class="span-icon-clr">*</span></label>
                            <input type="number" name="word_count" class="form-input-show">
                            <span class="text-danger">
                                @error('word_count')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Upload Your Assignment <span class="span-icon-clr">*</span></label>
                            <input type="file" name="image" class="form-input-show">
                            <span class="text-danger">
                                @error('image')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>
                        <div class="col-md-6 mt-2">
                            <label for="" class="form-label-show">Check out Date <span class="span-icon-clr">*</span></label>
                            <input type="date" name="check_out_date" class="form-input-show">
                            <span class="text-danger">
                                @error('check_out_date')
                                   {{$message}}
                                @enderror
                              </span>
                        </div>

                        <div class="col-md-12 mt-2">
                            <label for="" class="form-label-show">Message <span class="span-icon-clr">*</span></label>
                          <textarea name="message" id="" cols="10" rows="4" placeholder="Your Message" class="form-input-show"></textarea>
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
@endsection