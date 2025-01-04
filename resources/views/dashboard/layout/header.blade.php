<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="{{url('assets/css/bootstrap.min.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    <link rel="stylesheet" href="{{url('assets/css/style.css')}}">

    @if(isset($seo_data['seo_title']))
    <title>{{ $seo_data['seo_title'] }}</title>
    @endif
  
    @if(isset($seo_data['seo_description']))
        <meta name="description" content="{{$seo_data['seo_description']}}" />
        @endif
  
        @if(isset($seo_data['keywords']))
        <meta name="keywords"  content="{{$seo_data['keywords']}}" />
        @endif  
        
        
        <meta property="og:title" content="{{$seo_data['seo_title']}}">
  <meta property="og:site_name" content="Codepin">

  @if(isset($canocial))
  <meta property="og:url" content="{{$canocial}}">
  @endif

  <meta property="og:description" content="{{$seo_data['seo_description']}}">
  <meta property="og:type" content="website">
  <meta property="og:image" content="">
    <link rel="icon" type="image/x-icon" href="{{url('assets/images/EDW.png')}}">
</head>

<body>
    <!-- --------------------------Header Start------------------------- -->
    @php
    use \App\Models\CatCategory;
    use \App\Models\Tool;
    $catcategory = CatCategory::all();
    $toolData = Tool::all();
@endphp
    <header class="nav-container">
        <div class="nav-logo">
            <a href="{{url('/')}}"><img src="{{url('assets/images/EDW.png')}}" alt="logo"></a>
        </div>
        <i class="fa-solid fa-bars open-menu"></i>
        <div class="background"></div>

        <div class="nav-link-container">
            <i class="fa-solid fa-xmark close-menu"></i>
            <ul class="nav-links">
                <li class="nav-link-item"><a href="{{url('/')}}">Home</a></li>
                <li class="nav-link-item"><a href="{{url('about')}}">About</a></li>
                <li class="nav-link-item dropdown-menu-branch">
                    <a href="#" data-toggle="dropdown-menu">Digital Tool <i class="fa-solid fa-chevron-down"></i></a>
                    <ul class="dropdown-main-menu">
                        @foreach ($toolData as $tool)
                            
                        <li class="dropdown-menu-item"><a href="{{url('digital-tool/'.$tool->slug)}}">{{$tool->title}}</a></li>
                        @endforeach
                        
                    </ul>
                </li>
                <li class="nav-link-item dropdown-menu-branch">
                    <a href="#" data-toggle="dropdown-menu">Services <i class="fa-solid fa-chevron-down"></i></a>
                    <ul class="dropdown-main-menu">
                        <li class="dropdown-menu-item"><a href="{{url('service')}}">Services Sub Menu 1</a></li>
                        <li class="dropdown-menu-item"><a href="{{url('service')}}">Services Sub Menu 2</a></li>
                    </ul>
                </li>

           
                <li class="nav-link-item dropdown-menu-branch">
                    <a href="{{url('category')}}" data-toggle="dropdown-menu">Category <i
                            class="fa-solid fa-chevron-down"></i></a>
                    <ul class="dropdown-main-menu">
                        @foreach ($catcategory as $catcategorys)
                            
                        <li class="dropdown-menu-item"><a href="{{url('category',$catcategorys->slug)}}">{{$catcategorys->name}}</a></li>
                        @endforeach
                    </ul>
                </li>



                <li class="nav-link-item"><a href="{{url('contactus')}}">Contact us</a></li>


                @if (Auth::check())

                <li class="nav-link ">
               <a href="#"><button class="" >{{ Auth::user()->fname?? ""}}  {{Auth::user()->lname?? ""}}</button></a>
                   <form action="{{ route('logout') }}" method="POST">
                      @csrf
                      <button class="" type="submit">Logout</button>
                   </form>
                </li>
                @else
  
                <li class="nav-link-item"><a href="{{url('login')}}">Login</a></li>
                @endif
            </ul>
        </div>
    </header>