<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Footer;

class FooterController extends Controller
{

    public function FooterView(){
        $resule=Footer::all();
        return $resule;



    }

    public function showFooter(){

        $footer = Footer::all();
        return view('backend.footer.show_footer',compact('footer'));
    }

public function EditFooter($id){
    $footer = Footer::findOrFail($id);
    return view('backend.footer.edit_footer',compact('footer'));
}


public function updatefooter(Request $request , $id){

        Footer::findOrFail($id)->update([
'address'=>$request->address,
'email'=>$request->email,
'phone'=>$request->phone,
'facebook'=>$request->facebook,
'youtube'=>$request->youtube,
'twitter'=>$request->twitter,
'instegram'=>$request->instegram,
'linkedin'=>$request->linkedin,
    ]);

    $notification = array(
        'message' => 'Footer Updated Successfully',
        'alert-type' => 'info'
    );

    return redirect()->route('view.footer')->with($notification);

}

}
