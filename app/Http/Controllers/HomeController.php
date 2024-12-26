<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return view('home');
    }
    public function aboutPage()
    {
        return view('about');
    }

    public function categoryPage()
    {
        return view('category');
    }

    public function categoryDetailPage()
    {
        return view('category-detail');
    }


    public function servicePage()
    {
        return view('service');
    }


    public function contactusPage()
    {
        return view('contactus');
    }

    public function digitalToolPage()
    {
        return view('digital-tool');
    }

   

    public function policyPage()
    {
        return view('policy');
    }
}
