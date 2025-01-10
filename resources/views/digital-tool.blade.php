@extends('dashboard.layout.main')
@section('main-containers')

 <!-- --------------------------------Digital Tool------------------------------------ -->
 <section>
    <div class="about-banner-box">
        <div class="about-banner-content">
            <h2>Digital Tool</h2>
        </div>
    </div>
</section>

<section class="mt-4">
    <div class="container">
     <div class="row">
        <div class="col-md-6 mt-3">
            <div class="digital-tool-content">
           <span>{{$toolData->toolCategory->name}}</span>
           <h1>{{$toolData->title}}</h1>
           <p>{!!$toolData->short_content !!}</p>
          
           <div class="add-buy-btns-box">
            <a href="#"><button class="add-tocart-btn">ADD TO CART</button></a>
            <a href="#"><button class="buy-now-btn">BUY NOW</button></a>
           </div>
        </div>
        </div>
        <div class="col-md-6 mt-3">
         <div><img src="{{url('uploads/',$toolData->image)}}" alt="{{$toolData->alt}}" class="img-fluid"></div>
        </div>
     </div>
    </div>
</section>

<section>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-8 mt-3">
              
              <p>{!!$toolData->description!!}</p>

              
            </div>
            <div class="col-md-4 mt-3">
                <div class="login-container">
                    <h5 class="text-center mb-4" style="color:#fa0009"><b>Popular Tools</b></h5>
                    <a href="#" class="text-decoration-none">
                        <p class="our-categroy-link">&#8594; Plagrism Checker</p>
                    </a>
                    <a href="#" class="text-decoration-none">
                        <p class="our-categroy-link">&#8594; Plagrism Checker</p>
                    </a>
                    <a href="#" class="text-decoration-none">
                        <p class="our-categroy-link">&#8594; Plagrism Checker</p>
                    </a>
                    <a href="#" class="text-decoration-none">
                        <p class="our-categroy-link">&#8594; Plagrism Checker</p>
                    </a>
                    <a href="#" class="text-decoration-none">
                        <p class="our-categroy-link">&#8594; Plagrism Checker</p>
                    </a>
                    <a href="#" class="text-decoration-none">
                        <p class="our-categroy-link">&#8594; Plagrism Checker</p>
                    </a>
                </div>

                <div class="login-container mt-4">
                    <h5 class="text-center mb-4" style="color:#fa0009"><b>Related Tools</b></h5>
                    <a href="#" class="text-decoration-none">
                        <p class="our-categroy-link">&#8594; Backlink Checker</p>
                    </a>
                    <a href="#" class="text-decoration-none">
                        <p class="our-categroy-link">&#8594; Backlink Checker</p>
                    </a>
                    <a href="#" class="text-decoration-none">
                        <p class="our-categroy-link">&#8594; Backlink Checker</p>
                    </a>
                    <a href="#" class="text-decoration-none">
                        <p class="our-categroy-link">&#8594; Backlink Checker</p>
                    </a>
                    <a href="#" class="text-decoration-none">
                        <p class="our-categroy-link">&#8594; Backlink Checker</p>
                    </a>
                    <a href="#" class="text-decoration-none">
                        <p class="our-categroy-link">&#8594; Backlink Checker</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="mt-5">
    <div class="container">
        <h2 class="about-title-heading">Lorem ipsum dolor sit amet, consectetur adipisicing elit.<br> Aspernatur,
            esse
            perspiciatis!</h2>
        <p class="text-center">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Impedit cum iste inventore magni mollitia
            tenetur aliquam tempore delectus eveniet nesciunt!</p>
        <div class="row">
            <div class="col-md-4 mt-3">
                <div class="commute-box-show">
                   <i class="fa-solid fa-chart-simple fs-1" style="color:#fa0009"></i>
                      <div class="digital-tool-icnsz">
                        <h2>88%</h2>
                        <p>of the workweek is spent
                            on communication</p>
                      </div>
                   
                 </div>
            </div>

            <div class="col-md-4 mt-3">
                <div class="commute-box-show">
                    <i class="fa-solid fa-hourglass-start fs-1" style="color:#fa0009"></i>
                      <div class="digital-tool-icnsz">
                        <h2>19 hours</h2>
                        <p>of the workweek are spent
                            on writing tasks</p>
                      </div>
                   
                 </div>
            </div>

            <div class="col-md-4 mt-3">
                <div class="commute-box-show">
                    <i class="fa-solid fa-hand-holding-dollar fs-1" style="color:#fa0009"></i>
                      <div class="digital-tool-icnsz">
                        <h2>16.5M</h2>
                        <p>is how much companies with 1,000
                            employees can save with AI annually</p>
                      </div>
                   
                 </div>
            </div>
        </div>
    </div>
</section>

<section>
    <div class="container mt-5 mb-4">
        <h2 class="about-title-heading">Frequently Asked Questions</h2>
        <p class="text-center">Lorem ipsum, dolor sit amet consectetur adipisicing!</p>
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10 mt-3">
                <?php   if($toolData->question!=null){   ?>
                <div class="accordion" id="accordionExample">


                        <?php 

                        $questions = explode("__",$toolData->question);
                        $answers = explode("__",$toolData->answer);
     
                          foreach ($questions as $key => $value) { 
     
                             $mainEntity[$key]['@type'] ='Question';
                             $mainEntity[$key]['name'] =$value.'?';
                             $mainEntity[$key]['acceptedAnswer']['@type'] ='Answer';
                             $mainEntity[$key]['acceptedAnswer']['text'] =$answers[$key].'.'; 
     
                         ?> 
                    <div class="accordion-item">
                      <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            {!! $value !!}?
                        </button>
                      </h2>
                      <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                        <p>{!! $answers[$key] !!}</p>
                        </div>
                      </div>
                    </div>
                    <?php } ?>
                  
                    
                  
                  
                  </div>
                  <?php } ?>
            </div>
            <div class="col-md-1"></div>
        </div>
    </div>
</section>
@endsection