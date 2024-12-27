@extends('dashboard.layout.main')
@section('main-containers')



    


  <div class="banner-bg-scrollimgbox">
    <div class="row">
        <div class="col-md-6 mt-3">
            <div class="banner-scrollcontent">
                <span>Lorem, ipsum dolor.</span>
                <h1>Lorem ipsum dolor sit amet consectetur adipisicing.</h1>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Doloremque neque, eligendi cupiditate
                    deserunt amet molestias aspernatur est a repellat? Reprehenderit facere nemo aliquam unde
                    laboriosam totam maiores quod consectetur mollitia?</p>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Amet quod itaque ullam nam, numquam
                    architecto accusamus, deserunt nisi cupiditate nulla aperiam et tempore! Odio, amet. Quasi
                    itaque enim unde recusandae.</p>
            </div>
        </div>
        <div class="col-md-6 mt-3">
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
                        <label for="" class="form-label-show">First Name <span
                                class="span-icon-clr">*</span></label>
                        <input type="text" name="fname"  class="form-input-show" oninput="this.value = this.value.replace(/[^A-Za-z+.]/g, '').replace(/(\..*?)\..*/g, '$1');" placeholder="First Name">
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
                        <label for="" class="form-label-show">Mobile Number <span
                                class="span-icon-clr">*</span></label>
                        <input type="text" name="phone" class="form-input-show" maxlength="10" oninput="this.value = this.value.replace(/[^0-9+.]/g, '').replace(/(\..*?)\..*/g, '$1');" placeholder="Mobile Number">
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
                        <label for="" class="form-label-show">Message <span class="span-icon-clr">*</span></label>
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
        </div>
    </div>
</div>
<!-- ------------------Form Show------------------ -->
<section class="home-main-contentbg">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="home-main-content">
                    <span>Lorem, ipsum.</span>
                    <h1><b>Lorem, ipsum dolor sit amet consectetur adipisicing.</b></h1>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus provident distinctio animi
                        omnis amet itaque fugit iusto excepturi voluptate vel.</p>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus provident distinctio animi
                        omnis amet itaque fugit iusto excepturi voluptate vel.Lorem ipsum dolor sit amet consectetur
                        adipisicing elit. Doloribus provident distinctio animi
                        omnis amet itaque fugit iusto excepturi voluptate vel.Lorem ipsum dolor sit amet consectetur
                        adipisicing elit. Doloribus provident distinctio animi
                        omnis amet itaque fugit iusto excepturi voluptate vel.</p>
                </div>
            </div>
            <div class="col-md-6 mt-2">
                <div><img
                        src="https://img.freepik.com/free-vector/case-study-concept-illustration_114360-26478.jpg?t=st=1734945094~exp=1734948694~hmac=bf8daf56632a1925f2cc14eb388834d14a05e00669aa3c6efb2b5f1d84225581&w=740"
                        alt="image" class="img-fluid"></div>
            </div>
        </div>
    </div>
</section>

<section class="mt-5">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mt-3">
                <div><img
                        src="https://img.freepik.com/free-vector/office-people-discuss-about-business-growth-described-showing-graph_1150-40338.jpg?t=st=1734765024~exp=1734768624~hmac=048ca141a0bfe55c7a7896ba3afada662a00376a9220a6a0a0d43a86786d119b&w=740"
                        alt="about-image" class="img-fluid"></div>
            </div>
            <div class="col-md-6 mt-3">
                <div class="about-content">
                    <span style="color:#fa0009">Lorem, ipsum.</span>
                    <h2 class="mt-2"><b>About us</b></h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor unde aspernatur iure fuga.
                        Repellat culpa deleniti doloribus aliquam rem fuga!. Lorem ipsum dolor sit amet, consectetur
                        adipisicing elit. Ipsum reprehenderit eligendi
                        voluptate quae consequatur debitis quaerat architecto ea necessitatibus officiis!</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum reprehenderit eligendi
                        voluptate quae consequatur debitis quaerat architecto ea necessitatibus officiis! Lorem
                        ipsum dolor sit amet, consectetur adipisicing elit. Ipsum reprehenderit eligendi
                        voluptate quae consequatur debitis quaerat architecto ea necessitatibus officiis!. Lorem
                        ipsum dolor sit amet, consectetur adipisicing elit. Ipsum reprehenderit eligendi
                        voluptate quae consequatur debitis quaerat architecto ea necessitatibus officiis!</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="mt-5">
    <div class="container">
        <div class="text-center">
            <h2 style="color:#fa0009"><b>Industries We Support</b></h2>
            <p>Lorem ipsum dolor sit amet.</p>
        </div>
        <div class="row">
            <div class="col-md-4 mt-3">
                <div class="industry-box-show">
                    <i class="fa-solid fa-briefcase-medical fs-1"></i>
                    <h5>Pharma/Biotech</h5>
                </div>

            </div>
            <div class="col-md-4 mt-3">
                <div class="industry-box-show">
                    <i class="fa-solid fa-graduation-cap fs-1"></i>
                    <h5>Academic</h5>
                </div>

            </div>
            <div class="col-md-4 mt-3">
                <div class="industry-box-show">
                    <i class="fa-solid fa-flask-vial fs-1"></i>
                    <h5>Chemical</h5>
                </div>

            </div>
            <div class="col-md-4 mt-3">
                <div class="industry-box-show">
                    <i class="fa-solid fa-gear fs-1"></i>
                    <h5>Engineering</h5>
                </div>

            </div>
            <div class="col-md-4 mt-3">
                <div class="industry-box-show">
                    <i class="fa-solid fa-chart-line fs-1"></i>
                    <h5>Financial</h5>
                </div>

            </div>
            <div class="col-md-4 mt-3">
                <div class="industry-box-show">
                    <i class="fa-solid fa-scale-balanced fs-1"></i>
                    <h5>Legal</h5>
                </div>

            </div>
        </div>
    </div>
</section>

<section class="mt-5 mb-4">
    <div class="container">
        <h2 class="about-title-heading">Lorem ipsum dolor sit amet, consectetur adipisicing elit.<br> Aspernatur,
            esse
            perspiciatis!</h2>
        <p class="text-center">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Impedit cum iste inventore
            magni mollitia
            tenetur aliquam tempore delectus eveniet nesciunt!</p>

        <div class="row">
            <div class="col-md-4 mt-3">
                <div class="operate-box-show">
                    <div><img src="{{url('assets/images/privacy.png')}}" alt="icon" class="img-fluid"></div>

                    <h4>Accountability</h4>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quos tempora cum vel dolor
                        molestias! Cumque.</p>
                </div>
            </div>

            <div class="col-md-4 mt-3">
                <div class="operate-box-show">
                    <div><img src="{{url('assets/images/privacy.png')}}" alt="icon" class="img-fluid"></div>

                    <h4>Accountability</h4>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quos tempora cum vel dolor
                        molestias! Cumque.</p>
                </div>
            </div>


            <div class="col-md-4 mt-3">
                <div class="operate-box-show">
                    <div><img src="{{url('assets/images/privacy.png')}}" alt="icon" class="img-fluid"></div>

                    <h4>Accountability</h4>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quos tempora cum vel dolor
                        molestias! Cumque.</p>
                </div>
            </div>

            <div class="col-md-4 mt-3">
                <div class="operate-box-show">
                    <div><img src="{{url('assets/images/privacy.png')}}" alt="icon" class="img-fluid"></div>

                    <h4>Accountability</h4>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quos tempora cum vel dolor
                        molestias! Cumque.</p>
                </div>
            </div>

            <div class="col-md-4 mt-3">
                <div class="operate-box-show">
                    <div><img src="{{url('assets/images/privacy.png')}}" alt="icon" class="img-fluid"></div>

                    <h4>Accountability</h4>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quos tempora cum vel dolor
                        molestias! Cumque.</p>
                </div>
            </div>

            <div class="col-md-4 mt-3">
                <div class="operate-box-show">
                    <div><img src="{{url('assets/images/privacy.png')}}" alt="icon" class="img-fluid"></div>

                    <h4>Accountability</h4>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quos tempora cum vel dolor
                        molestias! Cumque.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section>
    <div class="container">
        <h2 class="about-title-heading">Lorem ipsum dolor sit amet, consectetur adipisicing elit.<br> Aspernatur,
            esse
            perspiciatis!</h2>
        <p class="text-center">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Impedit cum iste !</p>
        <div class="row">
            <div class="col-md-3 mt-3">
                <div class="text-center">
                    <div><img src="{{url('assets/images/reading-icon.png')}}" alt="icon" class="img-fluid"></div>
                    <h2 class="mt-3" style="color: #fa0009;"><b>47443</b></h2>
                    <p>Successfully Delivered Assignments</p>
                </div>
            </div>
            <div class="col-md-3 mt-3">
                <div class="text-center">
                    <div><img src="{{url('assets/images/reading-icon.png')}}" alt="icon" class="img-fluid"></div>
                    <h2 class="mt-3" style="color: #fa0009;"><b>100%</b></h2>
                    <p>Original Papers with Turnitin Report</p>
                </div>
            </div>
            <div class="col-md-3 mt-3">
                <div class="text-center">
                    <div><img src="{{url('assets/images/reading-icon.png')}}" alt="icon" class="img-fluid"></div>
                    <h2 class="mt-3" style="color: #fa0009;"><b>13375</b></h2>
                    <p>Lorem ipsum dolor sit, amet.</p>
                </div>
            </div>
            <div class="col-md-3 mt-3">
                <div class="text-center">
                    <div><img src="{{url('assets/images/reading-icon.png')}}" alt="icon" class="img-fluid"></div>
                    <h2 class="mt-3" style="color: #fa0009;"><b>2 Hour</b></h2>
                    <p>Successfully Delivered Assignments</p>
                </div>
            </div>

        </div>
    </div>
</section>

<section class="mt-5 mb-4">
    <div class="container">
        <h2 class="about-title-heading" style="color:#fa0009">Popular Categories</h2>
        <p class="text-center">Lorem ipsum, dolor sit amet!</p>
        <div class="row">
            <div class="col-md-4 mt-3">
                <div class="catergory-box">
                    <div><img
                            src="https://upload.tanca.io/api/upload/news/63254db1ffc72ce6a1043222?name=63254db1ae7a4jCac3690937-hrm-software-1.png"
                            alt="category-image" class="img-fluid"></div>
                    <div class="category-content">
                        <h5>Lorem ipsum dolor sit amet consectetur adipisicing.</h5>
                        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempora, fugit illo. Atque
                            illum porro hic.</p>
                        <a href="category-detail.html">
                            <div class="text-center"><button class="form-submit-btn">Learn-more</button></div>
                        </a>
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
                        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempora, fugit illo. Atque
                            illum porro hic.</p>
                        <a href="category-detail.html">
                            <div class="text-center"><button class="form-submit-btn">Learn-more</button></div>
                        </a>
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
                        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Tempora, fugit illo. Atque
                            illum porro hic.</p>
                        <a href="category-detail.html">
                            <div class="text-center"><button class="form-submit-btn">Learn-more</button></div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <a href="category.html">
            <div class="text-center mt-4"><button class="form-submit-btn">View More</button></div>
        </a>
    </div>
</section>

<section class="mt-5 mb-4">
    <div class="container">
        <h2 class="about-title-heading" style="color:#fa0009">Frequently Asked Questions</h2>
        <p class="text-center">Lorem ipsum, dolor sit amet!</p>
        <div class="row">
            <div class="col-md-6 mt-3">
                <div><img src="{{url('assets/images/faq.png')}}" alt="faq-image" class="img-fluid"></div>
            </div>

            <div class="col-md-6 mt-3">
                <div class="accordion" id="accordionExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Question 1
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse show"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti tempora magnam
                                    fugiat assumenda quas vitae impedit adipisci minus omnis iure?</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Question 2
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti tempora magnam
                                    fugiat assumenda quas vitae impedit adipisci minus omnis iure?</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Question 3
                            </button>
                        </h2>
                        <div id="collapseThree" class="accordion-collapse collapse"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti tempora magnam
                                    fugiat assumenda quas vitae impedit adipisci minus omnis iure?</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                Question 4
                            </button>
                        </h2>
                        <div id="collapseFour" class="accordion-collapse collapse"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti tempora magnam
                                    fugiat assumenda quas vitae impedit adipisci minus omnis iure?</p>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                Question 5
                            </button>
                        </h2>
                        <div id="collapseFive" class="accordion-collapse collapse"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti tempora magnam
                                    fugiat assumenda quas vitae impedit adipisci minus omnis iure?</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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