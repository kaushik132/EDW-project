<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="{{url('assets/css/bootstrap.min.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    <link rel="stylesheet" href="{{url('assets/css/style.css')}}">

    <title>Home Page</title>
    <link rel="icon" type="image/x-icon" href="{{url('assets/images/EDW.png')}}">
</head>

<body>
    <!-- --------------------------Header Start------------------------- -->
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
                        <li class="dropdown-menu-item"><a href="{{url('digital-tool')}}">Tool Sub Menu 1</a></li>
                        <li class="dropdown-menu-item"><a href="{{url('digital-tool')}}">Tool Sub Menu 2</a></li>
                        <li class="dropdown-menu-item"><a href="{{url('digital-tool')}}">Tool Sub Menu 3</a></li>
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
                        <li class="dropdown-menu-item"><a href="{{url('category')}}">Category Sub Menu 1</a></li>
                        <li class="dropdown-menu-item"><a href="{{url('category')}}">Category Sub Menu 2</a></li>
                    </ul>
                </li>
                <li class="nav-link-item"><a href="{{url('contactus')}}">Contact us</a></li>


                @if (Auth::check())

                <li class="nav-link ">
               <a href="#"><button class="" >{{ Auth::user()->fname?? ""}}</button></a>
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