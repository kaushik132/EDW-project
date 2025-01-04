<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\Title;
class AuthController extends Controller
{
    
    public function signupPage()
    {
       
        $homepage = Title::first();
        $seo_data['seo_title'] = $homepage->seo_title_signup;
        $seo_data['seo_description'] = $homepage->seo_des_signup;
        $seo_data['keywords'] = $homepage->seo_key_signup;
        $canocial ='https://codepin.org/about';
       
        return view('signup',compact('seo_data','canocial'));
    }

    public function registerPost(Request $request)
    {

        $request->validate([
            'fname' => 'required',
            'lname' => 'required',
            'phone' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required',
        ],[],
        [
            'fname' => 'First Name',
            'lname' => 'Last Name',
            'phone' => 'Phone Number',
            'email' => 'Email Address',
            'password' => 'Password',
        ]);
        $user = new User();
 
        $user->fname = $request->fname;
        $user->lname = $request->lname;
        $user->phone = $request->phone;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
 
        $user->save();
 
        return back()->with('success', 'Register successfully');
    }



    public function loginPage()
    {
     
        $homepage = Title::first();
        $seo_data['seo_title'] = $homepage->seo_title_login;
        $seo_data['seo_description'] = $homepage->seo_des_login;
        $seo_data['keywords'] = $homepage->seo_key_login;
        $canocial ='https://codepin.org/about';
        return view('login',compact('seo_data','canocial'));
    }


    public function loginPost(Request $request)
    {
        $credetials = [
            'email' => $request->email,
            'password' => $request->password,
        ];
 
        if (Auth::attempt($credetials)) {
            return redirect('/')->with('success', 'Login Success');
        }
 
        return back()->with('error', 'Error Email or Password');
    }
 
    public function logout()
    {
        Auth::logout();
 
        return redirect()->route('index');
    }
}
