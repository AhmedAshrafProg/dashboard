<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Chart;

class ChartController extends Controller
{
    public function ChartView(){
        $resule=Chart::all();
        return $resule;
    }

    public function ViewChart(){

        $Chart=Chart::all();

            return view('backend.chart.all_charts',compact('Chart'));

        }



        public function AddChart(){

            return view('backend.chart.add_chart');

        }


        public function StoreChart(Request $request){

            $request->validate([
                'x_data' => 'required|string|min:3|max:40',
                'y_data' => 'required',

            ]);

            Chart::insert(
                [
                'x_data' => $request->x_data,
                'y_data' => $request->y_data,

             ]);


             $notification = array(
                'message' => 'Chart Inserted Successfully',
                'alert-type' => 'success'
             );

            return redirect()->route('view.chart')->with($notification);


        }




        public function DeleteChart($id){

            Chart::findOrFail($id)->delete();
            $notification = array(
                'message' => 'Chart deleted Successfully',
                'alert-type' => 'warning'
             );

            return redirect()->route('view.chart')->with($notification);

        }


        public function EditChart($id){

$chart=Chart::findOrfail($id);

return view ('backend.chart.edit_chart',compact('chart'));


        }



public function UpdateChart(Request $request ,$id){

    Chart::findOrfail($id)->update([
        'x_data' => $request->x_data,
        'y_data' => $request->y_data,

    ]);
    $notification = array(
        'message' => 'Chart updated Successfully',
        'alert-type' => 'warning'
     );

    return redirect()->route('view.chart')->with($notification);


}


}
