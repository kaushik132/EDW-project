<?php

namespace App\Http\Controllers;

use App\Models\BlogCategory;
use App\Models\Blog;
use App\Models\ContactUs;
use Illuminate\Http\Request;
use \App\Models\Category;
use \App\Models\CatCategory;
use App\Models\Faq;
use App\Models\Service;
use App\Models\ServiceCategory;
use App\Models\Title;
use App\Models\Tool;
use App\Models\ToolCategory;

class HomeController extends Controller
{
    public function index()
    {
        $homepage = Title::first();
        $seo_data['seo_title'] = $homepage->seo_title_home;
        $seo_data['seo_description'] = $homepage->seo_des_home;
        $seo_data['keywords'] = $homepage->seo_key_home;
        $canocial ='https://codepin.org';

        $catCategory = Category::latest()->limit(6)->get();
        $faq = Faq::all();
        return view('home',compact('homepage','seo_data','canocial','catCategory','faq'));
    }
    public function aboutPage()
    {
        $homepage = Title::first();
        $seo_data['seo_title'] = $homepage->seo_title_about;
        $seo_data['seo_description'] = $homepage->seo_des_about;
        $seo_data['keywords'] = $homepage->seo_key_about;
        $canocial ='https://codepin.org/about';
        return view('about',compact('seo_data','canocial'));
    }

    public function categoryPage($slug=null)
    {
        $homepage = Title::select('seo_title_category','seo_des_category','seo_key_category')->first();
        if($slug!=null){
            $catCategory = CatCategory::where('slug',$slug)->first();
            $categoryList = Category::latest()->with('catCategory')->where('category_id',$catCategory->id)->paginate(6);
            $seo_data['seo_title'] =$catCategory->seo_title;
            $seo_data['seo_description'] =$catCategory->seo_description;
           $seo_data['keywords'] =$catCategory->seo_keyword;
           $canocial ='https://codepin.org/services/'.$slug;
           
        }else{
            $categoryList = Category::latest()->with('catCategory')->paginate(6); 
            $seo_data['seo_title'] =$homepage->seo_title_category;
            $seo_data['seo_description'] =$homepage->seo_des_category;
            $seo_data['keywords'] =$homepage->seo_key_category;
            $canocial ='https://codepin.org/services';
         }
         $cat = CatCategory::latest()->limit(12)->get();
        return view('category',compact('categoryList','cat','seo_data','canocial'));
    }



    public function categoryDetailPage($slug=null)
    {
        $catCategory = CatCategory::latest()->limit(6)->get();
        $categorylist = Category::latest()->limit(6)->get();
        $categoryData = Category::with('catCategory')->where('slug',$slug)->first();
        $seo_data['seo_title'] =$categoryData->seo_title;
        $seo_data['seo_description'] =$categoryData->seo_description;
       $seo_data['keywords'] =$categoryData->seo_keyword;
       $canocial ='https://codepin.org/service-details/'.$slug;
        return view('category-detail',compact('categoryData','categorylist','catCategory','seo_data','canocial'));
    }


    public function servicesPage($slug=null)
    {
        $homepage = Title::select('seo_title_services','seo_des_services','seo_key_services')->first();
        if($slug!=null){
            $serviceCategory = ServiceCategory::where('slug',$slug)->first();
            $serviceList = Service::latest()->with('serviceCategory')->where('category_id',$serviceCategory->id)->paginate(6);
            $seo_data['seo_title'] =$serviceCategory->seo_title;
            $seo_data['seo_description'] =$serviceCategory->seo_description;
           $seo_data['keywords'] =$serviceCategory->seo_keyword;
           $canocial ='https://codepin.org/services/'.$slug;
           
        }else{
            $serviceList = Service::latest()->with('serviceCategory')->paginate(6); 
            $seo_data['seo_title'] =$homepage->seo_title_services;
            $seo_data['seo_description'] =$homepage->seo_des_services;
            $seo_data['keywords'] =$homepage->seo_key_services;
            $canocial ='https://codepin.org/services';
         }
        return view('services',compact('serviceList','seo_data','canocial'));
    }


    public function servicePage($slug=null)
    {
        $serviceCategory = ServiceCategory::latest()->limit(6)->get();
        $serviceData = Service::with('serviceCategory')->where('slug',$slug)->first();
        $servicecatlist = ServiceCategory::latest()->limit(6)->get();
        $seo_data['seo_title'] =$serviceData->seo_title;
        $seo_data['seo_description'] =$serviceData->seo_description;
       $seo_data['keywords'] =$serviceData->seo_keyword;
       $canocial ='https://codepin.org/service-details/'.$slug;
    
        return view('service',compact('serviceData','servicecatlist','serviceCategory','seo_data','canocial'));
    }


    public function blogPage($slug=null)
    {
        $homepage = Title::select('seo_title_blog','seo_des_blog','seo_key_blog')->first();
        if($slug!=null){
            $blogCategory = BlogCategory::where('slug',$slug)->first();
            $blogList = Blog::latest()->with('blogCategory')->where('category_id',$blogCategory->id)->paginate(6);
            $seo_data['seo_title'] =$blogCategory->seo_title;
            $seo_data['seo_description'] =$blogCategory->seo_description;
           $seo_data['keywords'] =$blogCategory->seo_keyword;
           $canocial ='https://codepin.org/blog/'.$slug;
           
        }else{
            $blogList = Blog::latest()->with('blogCategory')->paginate(6); 
            $seo_data['seo_title'] =$homepage->seo_title_blog;
            $seo_data['seo_description'] =$homepage->seo_des_blog;
            $seo_data['keywords'] =$homepage->seo_key_blog;
            $canocial ='https://codepin.org/blog';
         }

         $blogfillter = BlogCategory::latest()->limit(12)->get();
        return view('blog',compact('seo_data','canocial','blogList','blogfillter'));
    }

   


    public function contactusPage()
    {
        $homepage = Title::first();
        $seo_data['seo_title'] = $homepage->seo_title_contact;
        $seo_data['seo_description'] = $homepage->seo_des_contact;
        $seo_data['keywords'] = $homepage->seo_key_contact;
        $canocial = 'https://codepin.org/contact';
        return view('contactus',compact('seo_data','canocial'));
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
        $homepage = Title::select('seo_title_tool','seo_des_tool','seo_key_tool')->first();
        if($slug!=null){
            $toolCategory = ToolCategory::where('slug',$slug)->first();
            $toolList = Tool::latest()->with('toolCategory')->where('tool_id',$toolCategory->id)->paginate(6);
            $seo_data['seo_title'] =$toolCategory->seo_title;
            $seo_data['seo_description'] =$toolCategory->seo_description;
           $seo_data['keywords'] =$toolCategory->seo_keyword;
           $canocial ='https://codepin.org/blogs/'.$slug;
           
        }else{
            $toolList = Tool::latest()->with('toolCategory')->paginate(6); 
            $seo_data['seo_title'] =$homepage->seo_title_tool;
            $seo_data['seo_description'] =$homepage->seo_des_tool;
            $seo_data['keywords'] =$homepage->seo_key_tool;
            $canocial ='https://codepin.org/blogs';
         }
        return view('digital-tools',compact('toolList','seo_data','canocial'));
    }


    public function digitalToolPage($slug=null)
    {

        $tCategorys = ToolCategory::latest()->limit(6)->get();
        $toolData = Tool::with('toolCategory')->where('slug',$slug)->first();
        $toollist = Tool::latest()->limit(6)->get();
        $seo_data['seo_title'] =$toolData->seo_title;
        $seo_data['seo_description'] =$toolData->seo_description;
       $seo_data['keywords'] =$toolData->seo_keyword;
       $canocial ='https://codepin.org/service-details/'.$slug;
        return view('digital-tool',compact('toolData','toollist','tCategorys','seo_data','canocial'));
 
    }


   

    public function policyPage()
    {
        
        $homepage = Title::first();
        $seo_data['seo_title'] = $homepage->seo_title_policy;
        $seo_data['seo_description'] = $homepage->seo_des_policy;
        $seo_data['keywords'] = $homepage->seo_key_policy;
        $canocial = 'https://codepin.org/contact';
        return view('policy',compact('seo_data','canocial'));
    }
}
