<?php

use App\Http\Controllers\Admin\AboutController;
use App\Http\Controllers\Admin\ChartController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\CourseController;
use App\Http\Controllers\Admin\FooterController;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin\ProjectController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\ServiceController;
use App\Http\Controllers\Admin\TeamController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


route::get('/services',[ServiceController:: class,'ServiceView']);


//projects
route::get('/AllProjects',[ProjectController:: class,'ProjecteView']);
route::get('/ThreeProjects',[ProjectController:: class,'LastThreeProject']);

route::get('/projectdetails/{id}',[ProjectController:: class,'ProjectDetails']);


//Courses
route::get('/AllCourses',[CourseController:: class,'CourseView']);
route::get('/HomeCourses',[CourseController:: class,'LastFourCourses']);
route::get('/coursDetails/{id}',[CourseController:: class,'CourseDetails']);


//footer
route::get('/Footer',[FooterController:: class,'FooterView']);

//chart
route::get('/Chart',[ChartController:: class,'ChartView']);

//team
route::get('/Team',[TeamController:: class,'TeamView']);

//About
route::get('/About',[AboutController:: class,'AboutView']);

//home api
route::get('/Home',[HomeController:: class,'HomeView']);

//contact
route::post('/Contact',[ContactController:: class,'contact']);