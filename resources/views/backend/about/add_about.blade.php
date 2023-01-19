@extends('admin.admin_master')
@section('content')

<div class="content-body" style="min-height: 788px;">
     <div class="container-fluid">
    
        <!-- row -->
        <div class="row">
   
         <div class="col-xl-12 col-lg-12">
             <div class="card">
                  <div class="card-header">
                       <h4 class="card-title">Add Courses </h4>
                  </div>
   
                  <div class="card-body">
                       <div class="basic-form">
   
               <form method="post" action="{{ route('store.about') }}" >
                    @csrf



               <div class="form-group">
                    <label class="info-title"> About</label>
                    <textarea class="form-control" name="about"
                         id="summernote1"></textarea>
               </div>

               <div class="form-group">
               <label class="info-title"> our vission</label>
               <textarea class="form-control" name="our_vission"
                    id="summernote2"></textarea>
               </div>

               <div class="form-group">
               <label class="info-title">Our Mission </label>
               <textarea class="form-control" name="our_mission"
                    id="summernote3"></textarea>
               </div>
                    
               
                    <input type="submit" class="btn btn-success" value="New ">

               </form>
                       </div>
                  </div>
             </div>
         </div>
   
        </div>
   </div>
   </div>
   


@endsection 

