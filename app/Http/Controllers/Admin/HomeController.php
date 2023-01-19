<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Home;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function HomeView(){
        $result=Home::all();
      return $result;

    }

    public function showHome(){

        $home=Home::all();
        return view ('backend.homepage.view_home',compact('home'));


      }

      public function editHome($id){

        $home=Home::FindOrFail($id);

        return view ('backend.homepage.edit_home',compact('home'));



      }


      public function updateHome(Request $request,$id){

        Home::FindOrFail($id)->update([



      'home_title' =>$request->home_title,
      'home_subtitle' =>$request->home_subtitle,
      'tech_description' =>$request->tech_description,
      'total_student' =>$request->total_student,
      'total_course' =>$request->total_course,
      'total_review' =>$request->total_review,

      'video_description' =>$request->video_description,
      'video_url' =>$request->video_url,

        ]);

        $notification = array(
          'message' => 'Home Page updated Successfully ',
          'alert-type' => 'info'
      );

      return redirect()->route('view.home')->with($notification);



      }
}
