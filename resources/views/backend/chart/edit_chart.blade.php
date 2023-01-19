@extends('admin.admin_master')
@section('content')

<div class="content-body" style="min-height: 788px;">
     <div class="container-fluid">
              <!-- row -->
         <div class="row">
              <div class="col-xl-12 col-lg-12">
              <div class="card">
                   <div class="card-header">
                        <h4 class="card-title">Edit Charts </h4>
                   </div>
                   <div class="card-body">
                        <div class="basic-form">
                             <form method="post" action="{{ route('chart.update',$chart->id) }}">
                                  @csrf

                                  <div class="form-group">
                                  <label class="info-title">x data </label>
                                  <input type="text" value="{{$chart->x_data}}" name="x_data" class="form-control input-default ">
                                  @error('x_data')
                                       <span class="text-danger">{{ $message }}</span>
                                  @enderror
                                  </div>

                                  <div class="form-group">
                                   <label class="info-title">y data </label>
                                   <input type="text" value="{{$chart->y_data}}" name="y_data" class="form-control input-default ">
                                   @error('service_name')
                                        <span class="text-danger">{{ $message }}</span>
                                   @enderror
                                   </div>

                                 
                                  <input type="submit" class="btn btn-success" value="Update Chart">
                             </form>
                        </div>
                   </div>
              </div>
              </div>
         </div>
         </div>
    </div>



@endsection