<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthController;
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
Route::get('category', [HomeController::class,'categoryPage']);
Route::get('category-detail', [HomeController::class,'categoryDetailPage']);
Route::get('contactus', [HomeController::class,'contactusPage']);
Route::get('digital-tool', [HomeController::class,'digitalToolPage']);

Route::get('policy', [HomeController::class,'policyPage']);
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

// profile dashbord