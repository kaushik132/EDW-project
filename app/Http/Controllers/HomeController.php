<?php

namespace App\Http\Controllers;

use App\Models\ContactUs;
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


    public function contactusPost(Request $request)
    {
        $request->validate([
            'fname' => 'required',
            'lname' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'select' => 'required',
            'deadline' => 'required',
            'word_count' => 'required',
            'image' => 'required',  
            'check_out_date' => 'required',
            'message' => 'required',
        ],[],
        [
            'fname' => 'First Name',
            'lname' => 'Last Name',
            'email' => 'Email Address',
            'phone' => 'Phone Number',
            'select' => 'Select',
            'deadline' => 'Deadline',
            'word_count' => 'Word Count',
            'image' => 'File',
            'check_out_date' => 'Check Out Date',
            'message' => 'Message',
        ]);

        $contact_obj = new ContactUs();
  $contact_obj->fname   =$request->fname;
  $contact_obj->lname   =$request->lname;
  $contact_obj->email  =$request->email;
  $contact_obj->phone=$request->phone;
    $contact_obj->select=$request->select;
    $contact_obj->deadline=$request->deadline;
    $contact_obj->word_count=$request->word_count;
    $contact_obj->check_out_date=$request->check_out_date;
  $contact_obj->message=$request->message;
  if ($request->hasFile('image')) {
    $file = $request->file('image'); // Get the uploaded file
    $extension = $file->getClientOriginalExtension(); // Get the file extension
    $filename = time() . '.' . $extension; // Create a unique filename
    $file->move('uploads/', $filename); // Move the file to the uploads directory
    $contact_obj->image = $filename; // Save the filename in the database
}
 
  $contact_obj->save();

        return back()->with('message', 'Message sent successfully');
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
