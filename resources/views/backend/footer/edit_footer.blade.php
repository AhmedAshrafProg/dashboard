@extends('admin.admin_master')
@section('content')

    <div class="content-body" style="min-height: 788px;">
        <div class="container-fluid">
            <!-- row -->
            <div class="row">
                <div class="col-xl-12 col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Update footer </h4>
                        </div>
                        <div class="card-body">
                            <div class="basic-form">
                                <form method="post" action="{{ route('update.footer', $footer->id) }}" enctype="multipart/form-data">
                                    @csrf



                                    <div class="form-group">
                                        <label class="info-title">Address </label>
                                        <input type="text" name="address" value="{{ $footer->address }}"
                                            class="form-control input-default ">

                                    </div>

                                    <div class="form-group">
                                        <label class="info-title">Email </label>
                                        <input type="text" name="email" value="{{ $footer->email }}"
                                            class="form-control input-default ">

                                    </div>
                                    <div class="form-group">
                                        <label class="info-title">facebook </label>
                                        <input type="text" name="facebook" value="{{ $footer->facebook }}"
                                            class="form-control input-default ">

                                    </div>
                                    <div class="form-group">
                                        <label class="info-title">twitter </label>
                                        <input type="text" name="twitter" value="{{ $footer->twitter }}"
                                            class="form-control input-default ">

                                    </div>
                                    <div class="form-group">
                                        <label class="info-title">instegram </label>
                                        <input type="text" name="instegram" value="{{ $footer->instegram }}"
                                            class="form-control input-default ">

                                    </div>
                                   </div>
                                   <div class="form-group">
                                       <label class="info-title">youtube </label>
                                       <input type="text" name="youtube" value="{{ $footer->youtube }}"
                                           class="form-control input-default ">

                                   </div>
                                   <div class="form-group">
                                       <label class="info-title">phone </label>
                                       <input type="text" name="phone" value="{{ $footer->phone }}"
                                           class="form-control input-default ">

                                   </div>
                                    <div class="form-group">
                                        <label class="info-title">linkedin </label>
                                        <input type="text" name="linkedin" value="{{ $footer->linkedin }}"
                                            class="form-control input-default ">

                                    </div>


                                    <input type="submit" class="btn btn-success" value="update Footer">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection
