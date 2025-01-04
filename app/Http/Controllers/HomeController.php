<?php

namespace App\Http\Controllers;

use App\Models\ContactUs;
use Illuminate\Http\Request;
use \App\Models\Category;
use \App\Models\CatCategory;
use App\Models\Tool;
use App\Models\ToolCategory;

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

    public function categoryPage($slug=null)
    {

        if($slug!=null){
            $catCategory = CatCategory::where('slug',$slug)->first();
            $categoryList = Category::latest()->with('catCategory')->where('category_id',$catCategory->id)->paginate(6);
           
        }else{
            $categoryList = Category::latest()->with('catCategory')->paginate(6); 
         }
         $cat = CatCategory::latest()->limit(12)->get();
        return view('category',compact('categoryList','cat'));
    }



    public function categoryDetailPage($slug=null)
    {
        $catCategory = CatCategory::latest()->limit(6)->get();
        $categorylist = Category::latest()->limit(6)->get();
        $categoryData = Category::with('catCategory')->where('slug',$slug)->first();
    //     $seo_data['seo_title'] =$categoryData->seo_title;
    //     $seo_data['seo_description'] =$categoryData->seo_description;
    //    $seo_data['keywords'] =$categoryData->seo_keyword;
    //    $canocial ='https://codepin.org/service-details/'.$slug;
        return view('category-detail',compact('categoryData','categorylist','catCategory'));
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


    public function digitalPage($slug=null)
    {

        if($slug!=null){
            $toolCategory = ToolCategory::where('slug',$slug)->first();
            $toolList = Tool::latest()->with('toolCategory')->where('tool_id',$toolCategory->id)->paginate(6);
           
        }else{
            $toolList = Tool::latest()->with('toolCategory')->paginate(6); 
         }
        return view('digital-tools',compact('toolList'));
    }


    public function digitalToolPage($slug=null)
    {

        $tCategorys = ToolCategory::latest()->limit(6)->get();
        $toolData = Tool::with('toolCategory')->where('slug',$slug)->first();
        $toollist = Tool::latest()->limit(6)->get();
    //     $seo_data['seo_title'] =$toolCategory->seo_title;
    //     $seo_data['seo_description'] =$toolCategory->seo_description;
    //    $seo_data['keywords'] =$toolCategory->seo_keyword;
    //    $canocial ='https://codepin.org/service-details/'.$slug;
        return view('digital-tool',compact('toolData','toollist','tCategorys'));
 
    }


   

    public function policyPage()
    {
        return view('policy');
    }
}
