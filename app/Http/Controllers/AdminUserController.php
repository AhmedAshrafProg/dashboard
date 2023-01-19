<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AdminUserController extends Controller
{
    public function AdminLogout(){
        Auth::logout();

        return redirect()->route('login');
    }


public function change_password(){

        return view('backend.user.change_password');

}

public function ShowProfile(){

        return view('backend.user.user_profile');

}

public function ChangePassword(Request $request){

        $validateData = $request->validate([
'oldpassword' => 'required',
'password' => 'required|confirmed'
        ]);

        $hashedPassword = Auth::user()->password;

        if(Hash::check($request->oldpassword,$hashedPassword)){
            $user = User::find(Auth::id());
            $user->password = Hash::make($request->password);
            $user->save();
            Auth::logout();
            return redirect()->route('login');

        }else{
            return redirect()->back();
        }

}

public function ProfileUpdate(Request $request){

        $data = User::find(Auth::user()->id);
        $data->name = $request->name;
        $data->email = $request->email;

        if($request->file('profile_photo_path')){
            $file = $request->file('profile_photo_path');
            @unlink(public_path('upload/user/'.$data->profile_photo_path));
            $filename = date('YmdHi').$file->getClientOriginalName();
            $file->move(public_path('upload/user'),$filename);
            $data['profile_photo_path'] = 'upload/user/'.$filename;
        }
        $data->save();

$notification= array(
'message' => 'User Profile updated Successfully',
'alert-type' => 'success'

);

        return redirect()->route('user.profile')->with($notification);
}

}
