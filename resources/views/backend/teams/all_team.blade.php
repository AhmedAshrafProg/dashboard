@extends('admin.admin_master')

@section('content')

<div class="content-body" style="min-height: 788px;">
     <div class="container-fluid">
         <!-- row -->
         <div class="row">
             <div class="col-lg-12">
                 <div class="card">
                     <div class="card-header">
                         <h4 class="card-title">Team Page </h4>
                     </div>
                     <div class="card-body">
                         <div class="table-responsive">
                             <table class="table table-responsive-md">
                                 <thead>
                                     <tr>
                                         <th><strong>team Name </strong></th>
                                         <th><strong>Team Description</strong></th>
                                         <th><strong>image</strong></th>
                                         <th>Action</th>
                                     </tr>
                                 </thead>
                                 <tbody>

                                     @foreach ($team as $row)
                                         
                                     <tr>
                                         <td>{{$row->team_title}} </td>
                                         <td>{{Str::limit($row->team_description,'60' ,'....')  }} </td>
                                         <td> <img src="{{ asset($row->team_img	) }}"  style="width: 70px; height: 40px;"> </td>

                                         <td>
                                             <div class="d-flex">
                                                 <a href="{{ route('team.edit', $row->id) }}" class="btn btn-primary shadow btn-xs sharp mr-1"><i class="fa fa-pencil"></i></a>
                                                     

                                                 <a href="{{ route('team.delete', $row->id) }}" class="btn btn-danger shadow btn-xs sharp" id="delete"><i class="fa fa-trash"></i></a>
                                                       

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
