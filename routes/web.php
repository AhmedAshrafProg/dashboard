<?php

use App\Http\Controllers\Admin\AboutController;
use App\Http\Controllers\Admin\ChartController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\CourseController;
use App\Http\Controllers\Admin\FooterController;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin\ProjectController;
use App\Http\Controllers\Admin\ServiceController;
use App\Http\Controllers\Admin\TeamController;
use App\Http\Controllers\AdminUserController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {

    $service=DB::table('services')->get();

    $courses=DB::table('courses')->get();
    $message=DB::table('contacts')->get();
    $projects=DB::table('projects')->get();
        return view('admin.index',compact('service','courses','message','projects'));
    })->name('dashboard');

//user logout

Route::get('/logout' ,[AdminUserController::class,'AdminLogout'])->name('user.logout');

//user change password

Route::get('/user/change/password' ,[AdminUserController::class,'change_password'])->name('user.change.password');

//user profile

Route::get('/profile' ,[AdminUserController::class,'ShowProfile'])->name('user.profile');

//user update password

Route::post('/change/password' ,[AdminUserController::class,'ChangePassword'])->name('password.update');

//user update profile

Route::post('/profile/update' ,[AdminUserController::class,'ProfileUpdate'])->name('profile.update');

//services

Route::get('/all/services' ,[ServiceController::class,'ShowServices'])->name('allservices');

Route::get('/add/service' ,[ServiceController::class,'AddService'])->name('add.service');

Route::post('/service/store' ,[ServiceController::class,'ServiceStore'])->name('service.store');

Route::get('/delete/service/{id}' ,[ServiceController::class,'deleteService'])->name('service.delete');

Route::get('/edit/service/{id}' ,[ServiceController::class,'EditService'])->name('service.edit');

Route::post('/service/update/{id}' ,[ServiceController::class,'ServiceUpdate'])->name('service.update');

//courses

Route::get('/all/courses' ,[CourseController::class,'showCourses'])->name('allcourses');

Route::get('/add/course' ,[CourseController::class,'AddCourse'])->name('add.course');

Route::post('/course/store' ,[CourseController::class,'StoreCourse'])->name('store.course');

Route::get('/delete/course/{id}' ,[CourseController::class,'DeleteCourse'])->name('course.delete');

Route::get('/edit/course/{id}' ,[CourseController::class,'EditCourse'])->name('course.edit');

Route::post('/course/update/{id}' ,[CourseController::class,'updateCourse'])->name('update.course');

//team routes

Route::get('/all/team' ,[TeamController::class,'showTeam'])->name('all.team');

Route::get('/add/team' ,[TeamController::class,'AddTeam'])->name('add.team');

Route::get('/delete/team/{id}' ,[TeamController::class,'DeleteTeam'])->name('team.delete');

Route::post('/team/store' ,[TeamController::class,'StoreTeam'])->name('team.store');

Route::get('/edit/team/{id}' ,[TeamController::class,'EditTeam'])->name('team.edit');

Route::post('/course/update/{id}' ,[TeamController::class,'UpdateTeam'])->name('team.update');

//about routes

Route::get('/all/about' ,[AboutController::class,'ViewAbout'])->name('view.about');

Route::get('/add/about' ,[AboutController::class,'AddAbout'])->name('add.about');

Route::post('/store/about' ,[AboutController::class,'StoreAbout'])->name('store.about');

Route::get('/delete/about/{id}' ,[AboutController::class,'DeleteAbout'])->name('about.delete');

Route::get('/edit/about/{id}' ,[AboutController::class,'EditAbout'])->name('about.edit');

Route::post('/update/about/{id}' ,[AboutController::class,'UpdateAbout'])->name('update.about');

// chart routes

Route::get('/all/charts' ,[ChartController::class,'ViewChart'])->name('view.chart');

Route::get('/add/chart' ,[ChartController::class,'AddChart'])->name('add.chart');

Route::post('/store/chart' ,[ChartController::class,'StoreChart'])->name('chart.store');

Route::get('/delete/chart/{id}' ,[ChartController::class,'DeleteChart'])->name('chart.delete');

Route::get('/edit/chart/{id}' ,[ChartController::class,'EditChart'])->name('chart.edit');

Route::post('/update/chart/{id}' ,[ChartController::class,'UpdateChart'])->name('chart.update');

//messages routes

Route::get('/view/message' ,[ContactController::class,'ViewMessages'])->name('view.Messages');

Route::get('/delete/message/{id}' ,[ContactController::class,'DeleteMessages'])->name('message.delete');

// projects routes

Route::get('/all/projects' ,[ProjectController::class,'showProjects'])->name('all.projects');

Route::get('/add/project' ,[ProjectController::class,'AddProjects'])->name('add.project');

Route::post('/store/project' ,[ProjectController::class,'StoreProject'])->name('store.project');

Route::get('/delete/project/{id}' ,[ProjectController::class,'DeleteProjects'])->name('project.delete');

Route::get('/edit/project/{id}' ,[ProjectController::class,'EditProjects'])->name('project.edit');

Route::post('/update/project/{id}' ,[ProjectController::class,'UpdateProject'])->name('update.project');


//footer routes

Route::get('/footer' ,[FooterController::class,'showFooter'])->name('view.footer');

Route::get('/edit/footer/{id}' ,[FooterController::class,'EditFooter'])->name('footer.edit');

Route::post('/update/footer/{id}' ,[FooterController::class,'updatefooter'])->name('update.footer');

//footer routes

Route::get('/home' ,[HomeController::class,'showHome'])->name('view.home');

Route::get('/edit/home/{id}' ,[HomeController::class,'editHome'])->name('home.edit');

Route::post('/update/home/{id}' ,[HomeController::class,'updateHome'])->name('update.home');

