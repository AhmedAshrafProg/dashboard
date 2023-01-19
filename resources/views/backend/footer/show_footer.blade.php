@extends('admin.admin_master')
@section('content')


    <div class="content-body" style="min-height: 788px;">
        <div class="container-fluid">
            <!-- row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Footer Page </h4>
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-responsive-md">
                                    <thead>
                                        <tr>
                                            <th><strong>Address </strong></th>
                                            <th><strong>Email</strong></th>
                                            <th><strong>phone</strong></th>
                                            <th><strong>facebook</strong></th>
                                            <th><strong>youtube</strong></th>
                                            <th><strong>instegram</strong></th>
                                            <th><strong>linkedin</strong></th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        @foreach ($footer as $row)

                                        <tr>
                                            <td>{{$row->address  }} </td>
                                            <td>{{$row->email  }} </td>
                                            <td>{{$row->phone  }} </td>
                                            <td>{{$row->facebook  }} </td>
                                            <td>{{$row->youtube  }} </td>
                                            <td>{{$row->twitter  }} </td>
                                            <td>{{$row->instegram  }} </td>
                                            <td>{{$row->linkedin  }} </td>


                                            <td>
                                                <div class="d-flex">
                                                    <a href="{{ route('footer.edit', $row->id) }}" class="btn btn-primary shadow btn-xs sharp mr-1"><i class="fa fa-pencil"></i></a>

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
