<?php

use App\Http\Controllers\HomeController;
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
Route::get('/', [HomeController::class,'index']);
Route::get('about', [HomeController::class,'aboutPage']);
Route::get('category', [HomeController::class,'categoryPage']);
Route::get('category-detail', [HomeController::class,'categoryDetailPage']);
Route::get('contactus', [HomeController::class,'contactusPage']);
Route::get('digital-tool', [HomeController::class,'digitalToolPage']);
Route::get('login', [HomeController::class,'loginPage']);
Route::get('signup', [HomeController::class,'signupPage']);
Route::get('policy', [HomeController::class,'policyPage']);
Route::get('service', [HomeController::class,'servicePage']);



// profile dashbord