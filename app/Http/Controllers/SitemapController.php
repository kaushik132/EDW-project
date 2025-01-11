<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\Category;
use \App\Models\CatCategory;
use App\Models\Tool;
use App\Models\ToolCategory;
use App\Models\Service;
use App\Models\Blog;
use App\Models\BlogCategory;
use App\Models\ServiceCategory;

class SitemapController extends Controller
{
    public function index()
    {
        $catCategory = CatCategory::all();
        $category = Category::all();
        $tool = Tool::all();
        // $toolCategory = ToolCategory::all();
        $service = Service::all();
        // $serviceCategory = ServiceCategory::all();
        $blogCategory = BlogCategory::all();
        $blog = Blog::all();

        return response()->view('sitemap', [
            'category' => $category,
            'catCategory' => $catCategory,
            'tool' => $tool,
            // 'toolCategory' => $toolCategory
            'service' => $service,
            'blog' => $blog,
            'blogCategory' => $blogCategory,
            // 'serviceCategory' => $serviceCategory

           
        ])->header('Content-Type', 'text/xml');
    }
}
