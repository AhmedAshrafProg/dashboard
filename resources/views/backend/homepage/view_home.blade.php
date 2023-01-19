@extends('admin.admin_master')
@section('content')

<div class="content-body" style="min-height: 788px;">
     <div class="container-fluid">
         <!-- row -->
         <div class="row">
             <div class="col-lg-12">
                 <div class="card">
                     <div class="card-header">
                         <h4 class="card-title">Home Page </h4>
                     </div>
                     <div class="card-body">
                         <div class="table-responsive">
                             <table class="table table-responsive-md">
                                 <thead>
                                     <tr>
                                          

                                         <th><strong>Title </strong></th>
                                         <th><strong>Subtitle</strong></th>
                                         <th><strong>Total students</strong></th>
                                         <th><strong>Total courses</strong></th>
                                         <th><strong>Total Revies</strong></th>
                                         <th>Action</th>
                                     </tr>
                                 </thead>
                                 <tbody>

                                     @foreach ($home as $row)
                              
       
                                     <tr>
                                         <td>{{$row->home_title }} </td>
                                         <td>{{$row->home_subtitle }} </td>
                                         <td>{{$row->total_student }} </td>
                                         <td>{{$row->total_course }} </td>
                                          <td>{{$row->total_review }} </td>
                                         
                                         <td>
                                             <div class="d-flex">
                                                 <a href="{{ route('home.edit', $row->id) }}" class="btn btn-primary shadow btn-xs sharp mr-1"><i class="fa fa-pencil"></i></a>
                                                     

                                               
                                                       

                                             </div>
                                         </td>
                                     </tr>
                                     @endforeach
                                 </tbody>
                             </table>

                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>



@endsection 