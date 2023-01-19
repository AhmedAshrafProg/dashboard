@extends('admin.admin_master')
@section('content')

    <div class="content-body" style="min-height: 788px;">
        <div class="container-fluid">
            <!-- row -->
            <div class="row">
                <div class="col-xl-12 col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Update home page </h4>
                        </div>
                        <div class="card-body">
                            <div class="basic-form">
                                <form method="post" action="{{ route('update.home', $home->id) }}" enctype="multipart/form-data">
                                    @csrf

                                    <div class="form-group">
                                        <label class="info-title">Title </label>
                                        <input type="text" name="home_title" value="{{ $home->home_title }}"
                                            class="form-control input-default ">

                                    </div>

                                    <div class="form-group">
                                        <label class="info-title">Sub title </label>
                                        <input type="text" name="home_subtitle" value="{{ $home->home_subtitle }}"
                                            class="form-control input-default ">

                                    </div>
                                    <div class="form-group">
                                        <label class="info-title">Description </label>
                                        <input type="text" name="tech_description" value="{{ $home->tech_description }}"
                                            class="form-control input-default ">

                                    </div>
                                    <div class="form-group">
                                        <label class="info-title">Total student </label>
                                        <input type="text" name="total_student" value="{{ $home->total_student }}"
                                            class="form-control input-default ">

                                    </div>
                                    <div class="form-group">
                                        <label class="info-title">Courses </label>
                                        <input type="text" name="total_course" value="{{ $home->total_course }}"
                                            class="form-control input-default ">

                                    </div>
                                   </div>
                                   <div class="form-group">
                                       <label class="info-title">Reviews </label>
                                       <input type="text" name="total_review" value="{{ $home->total_review }}"
                                           class="form-control input-default ">

                                   </div>
                                   <div class="form-group">
                                       <label class="info-title">Video description </label>
                                       <input type="text" name="video_description" value="{{ $home->video_description }}"
                                           class="form-control input-default ">

                                   </div>
                                    <div class="form-group">
                                        <label class="info-title">Video link </label>
                                        <input type="text" name="video_url" value="{{ $home->video_url }}"
                                            class="form-control input-default ">

                                    </div>


                                    <input type="submit" class="btn btn-success" value="update home">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection
