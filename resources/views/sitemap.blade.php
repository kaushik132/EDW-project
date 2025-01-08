<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
            http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">

    {{-- Home --}}
<url>
  <loc>{{url("/")}}</loc>
  <lastmod>2024-12-29T10:10:47+00:00</lastmod>
  <priority>0.8</priority>
</url>

{{-- About --}}
<url>
  <loc>{{url("about")}}</loc>
  <lastmod>2024-12-29T10:10:47+00:00</lastmod>
  <priority>0.8</priority>
</url>


{{--Tool Details  --}}

@foreach ($tool as $tools)
    
<url>
  <loc>{{url('digital-tool/'.$tools->slug)}}</loc>
  <lastmod>{{ $tools->created_at->tz('UTC')->toAtomString() }}</lastmod>
  <priority>0.8</priority>
</url>
@endforeach

{{-- Services Details --}}

@foreach ($service as $services)
    
<url>
  <loc>{{url('service/'.$services->slug)}}</loc>
  <lastmod>{{ $services->created_at->tz('UTC')->toAtomString() }}</lastmod>
  <priority>0.8</priority>
</url>
@endforeach


{{-- only category --}}
<url>
  <loc>{{url("category")}}</loc>
  <lastmod>2024-12-29T10:10:47+00:00</lastmod>
  <priority>0.8</priority>
</url>


{{-- Categorys Category --}}
@foreach ($catCategory as $catCategorys)
    
<url>
  <loc>{{url('category/'.$catCategorys->slug)}}</loc>
  <lastmod>{{ $catCategorys->created_at->tz('UTC')->toAtomString() }}</lastmod>
  <priority>0.8</priority>
</url>
@endforeach

{{-- Category Details --}}

@foreach ($category as $categorys)
    
<url>
  <loc>{{url('category-detail/'.$categorys->slug)}}</loc>
  <lastmod>{{ $categorys->created_at->tz('UTC')->toAtomString() }}</lastmod>
  <priority>0.8</priority>
</url>
@endforeach


{{-- Contact Us  --}}
<url>
  <loc>{{url("contactus")}}</loc>
  <lastmod>2024-12-31T10:10:47+00:00</lastmod>
  <priority>0.8</priority>
</url>


{{-- login  --}}
<url>
  <loc>{{url("login")}}</loc>
  <lastmod>2024-12-31T10:10:47+00:00</lastmod>
  <priority>0.8</priority>
</url>

{{-- Signup --}}
<url>
  <loc>{{url("signup")}}</loc>
  <lastmod>2024-12-31T10:10:47+00:00</lastmod>
  <priority>0.8</priority>
</url>


{{-- policy --}}
<url>
  <loc>{{url("policy")}}</loc>
  <lastmod>2024-12-31T10:10:47+00:00</lastmod>
  <priority>0.8</priority>
</url>








   

 

</urlset>