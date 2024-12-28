<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
            http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">

    
<url>
  <loc>{{url("/")}}</loc>
  <lastmod>2023-09-16T10:10:47+00:00</lastmod>
  <priority>0.8</priority>
</url>

<url>
  <loc>{{url("about")}}</loc>
  <lastmod>2023-09-16T10:10:47+00:00</lastmod>
  <priority>0.8</priority>
</url>

<url>
  <loc>{{url("login")}}</loc>
  <lastmod>2023-09-16T10:10:47+00:00</lastmod>
  <priority>0.8</priority>
</url>

<url>
  <loc>{{url("signup")}}</loc>
  <lastmod>2023-09-16T10:10:47+00:00</lastmod>
  <priority>0.8</priority>
</url>





{{-- @foreach ($itServices as $itServices)
    
<url>
    <loc>{{url('/')}}/it-services/{{$itServices->slug}}</loc>
    <lastmod>{{$itServices->created_at->tz('UTC')->toAtomString()}}</lastmod>
    <priority>0.8</priority>
</url>
@endforeach --}}


   

 

</urlset>