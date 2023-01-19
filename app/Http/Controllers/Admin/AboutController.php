<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\About;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function AboutView(){
        $resule=About::all();
        return $resule;
    }

    public function ViewAbout(){

        $About=About::all();

            return view('backend.about.all_about',compact('About'));

        }

        public function AddAbout(){

            return view('backend.about.add_about');

        }

        public function StoreAbout(Request $request){




            $request->validate([
               'about' => 'required',
               'our_vission' => 'required',
               'our_mission' => 'required',
           ]);



           About::insert(
               [
               'about' => $request->about,
               'our_vission' => $request->our_vission,
               'our_mission' => $request->our_mission,
            ]);


            $notification = array(
               'message' => 'About section Inserted Successfully',
               'alert-type' => 'success'
            );

           return redirect()->route('view.about')->with($notification);



               }



               public function  DeleteAbout($id){


                   About::findOrFail($id)->delete();

                     $notification = array(
                         'message' => 'deteted Successfully',
                         'alert-type' => 'warning'
                      );

                     return redirect()->route('view.about')->with($notification);


                 }





       public function EditAbout($id){

           $about= About::find($id);

           return view ('backend.about.edit_about',compact('about'));

       }




       public function UpdateAbout(Request $request,$id){




           About::findOrFail($id)->update(
               [
                   'about' => $request->about,
                   'our_vission' => $request->our_vission,
                   'our_mission' => $request->our_mission,
            ]);


            $notification = array(
               'message' => 'Updated Successfully',
               'alert-type' => 'success'
            );

           return redirect()->route('view.about')->with($notification);



       }




}
