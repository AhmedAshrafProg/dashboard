@extends('admin.admin_master')
@section('content')

<div class="content-body" style="min-height: 788px;">
     <div class="container-fluid">
         <!-- row -->
         <div class="row">
             <div class="col-lg-12">
                 <div class="card">
                     <div class="card-header">
                         <h4 class="card-title">About Page </h4>
                     </div>
                     <div class="card-body">
                         <div class="table-responsive">
                             <table class="table table-responsive-md">
                                 <thead>
                                     <tr>
                                         <th><strong> About </strong></th>
                                         <th><strong>Our mission</strong></th>
                                         <th><strong>Our vission</strong></th>
                                         <th>Action</th>
                                     </tr>
                                 </thead>
                                 <tbody>

                                     @foreach ($About as $row)
                                        
                                     <tr>
                                         <td>{{Str::limit($row->about,'60' ,'....')  }} </td>
                                         <td>{{Str::limit($row->our_mission,'60' ,'....')  }} </td>
                                         <td>{{Str::limit($row->our_vission,'60' ,'....')  }} </td>

                                         <td>
                                             <div class="d-flex">
                                                 <a href="{{ route('about.edit', $row->id) }}" class="btn btn-primary shadow btn-xs sharp mr-1"><i class="fa fa-pencil"></i></a>
                                                     

                                                 <a href="{{ route('about.delete', $row->id) }}" class="btn btn-danger shadow btn-xs sharp" id="delete"><i class="fa fa-trash"></i></a>
                                                       

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