<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Team;
use Illuminate\Http\Request;

class TeamController extends Controller
{
    public function TeamView(){
        $result=Team::all();
        return $result;


    }
    public function showTeam(){

        $team=Team::all();

            return view('backend.teams.all_team',compact('team'));

        }

        public function AddTeam(){


            return view('backend.teams.add_team');

        }


    public function DeleteTeam($id)
    {
        Team::findOrFail($id)->delete();
        $notification = array(
            'message' => 'Team Member deteted Successfully',
            'alert-type' => 'warning'
        );

        return redirect()->route('all.team')->with($notification);

    }

    public function StoreTeam(Request $request){

        $request->validate([
            'team_title' => 'required|string|min:3|max:40',
            'team_description' => 'required',
            'team_img' => 'required',
        ]);


        $file = $request->file('team_img');
        //ctp.png

        $filename = date('YmdHi').'.'.$file->getClientOriginalExtension();
        //211230.png
        $file->move('upload/team', $filename);

        $save_url= 'upload/team/'.$filename;


        Team::insert(
            [
            'team_title' => $request->team_title,
            'team_description' => $request->team_description,
            'team_img' => $save_url,
         ]);


         $notification = array(
            'message' => 'New Team Inserted Successfully',
            'alert-type' => 'success'
         );

        return redirect()->route('all.team')->with($notification);


    }

    public function EditTeam($id){

        $team=Team::findOrFail($id);

        return view('backend.teams.edit_team',compact('team'));

      }




      public function  UpdateTeam(Request $request,$id){


          if ($request->file('team_img')) {

              $old_image=$request->old_img;

              @unlink($old_image);

              $file = $request->file('team_img');
          //ctp.png

          $filename = date('YmdHi').'.'.$file->getClientOriginalExtension();
          //211230.png
          $file->move('upload/team', $filename);

          $save_url= 'upload/team/'.$filename;


          Team::findOrFail($id)->update(
              [
                  'team_title' => $request->team_title,
                  'team_description' => $request->team_description,
                  'team_img' => $save_url,
           ]);


           $notification = array(
              'message' => 'team Updated Successfully with image',
              'alert-type' => 'success'
           );

           return redirect()->route('all.team')->with($notification);


          }else{
              Team::findOrFail($id)->update(
                  [
                      'team_title' => $request->team_title,
                      'team_description' => $request->team_description,

               ]);


               $notification = array(
                  'message' => 'team Updated Successfully without image',
                  'alert-type' => 'success'
               );

               return redirect()->route('all.team')->with($notification);
          }

      }


}
