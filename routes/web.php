<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\SitemapController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/', [HomeController::class,'index'])->name('index');
Route::get('about', [HomeController::class,'aboutPage']);
Route::get('policy', [HomeController::class,'policyPage']);


Route::get('category/{slug?}', [HomeController::class,'categoryPage']);
Route::get('category-detail/{slug?}', [HomeController::class,'categoryDetailPage'])->name('category-detail');

Route::get('digital-tool/{slug?}', [HomeController::class,'digitalToolPage']);
Route::get('digital-tools/{slug?}', [HomeController::class,'digitalPage']);


Route::get('contactus', [HomeController::class,'contactusPage']);

Route::post('contactus', [HomeController::class,'contactusPost'])->name('contactus');



Route::get('service', [HomeController::class,'servicePage']);

// Auth routes
Route::group(['middleware' => 'guest'], function () {
    Route::get('signup', [AuthController::class,'signupPage']);
    Route::post('/register', [AuthController::class, 'registerPost'])->name('register');
Route::get('login', [AuthController::class,'loginPage']);
Route::post('/login', [AuthController::class, 'loginPost'])->name('login');

});


// where to put your auth routes


Route::group(['middleware' => 'auth'], function () {
    // Route::get('/sample-page',[HomeController::class, 'sample'])->name('sample');

Route::post('/logout', [AuthController::class, 'logout'])->name('logout');
});


Route::get('sitemap.xml',[SitemapController::class, 'index']);

// profile dashbord