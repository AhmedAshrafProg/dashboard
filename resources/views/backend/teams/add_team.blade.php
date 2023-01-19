@extends('admin.admin_master')

@section('content')
<div class="content-body" style="min-height: 788px;">
     <div class="container-fluid">
              <!-- row -->
         <div class="row">
              <div class="col-xl-12 col-lg-12">
              <div class="card">
                   <div class="card-header">
                        <h4 class="card-title">Add new team  </h4>
                   </div>
                   <div class="card-body">
                        <div class="basic-form">
                             <form method="post" action="{{ route('team.store') }}" enctype="multipart/form-data">
                                  @csrf

                                  <div class="form-group">
                                  <label class="info-title">team Name </label>
                                  <input type="text" name="team_title" class="form-control input-default ">
                                  @error('team_title')
                                       <span class="text-danger">{{ $message }}</span>
                                  @enderror
                                  </div>

                                  <div class="form-group">
                                  <label class="info-title">team Description </label>
                                  <textarea name="team_description" class="form-control" rows="4"
                                       id="comment"></textarea>
                                  @error('team_description')
                                       <span class="text-danger">{{ $message }}</span>
                                  @enderror
                                  </div>
                                  <div class="input-group mb-3">
                                  <div class="input-group-prepend">
                                       <span class="input-group-text">Upload</span>
                                  </div>
                                  <div class="custom-file">
                                       <input type="file" name="team_img" class="custom-file-input" id="image">
                                       <label class="custom-file-label">Choose file</label>
                                  </div>
                                  </div>
                                  <div class="form-group">
                                  <img id="showImage" src="{{ url('upload/no_image.jpg') }}"
                                       style="width: 100px; height: 100px;">
                                  </div>
                                  <input type="submit" class="btn btn-success" value="Add team">
                             </form>
                        </div>
                   </div>
              </div>
              </div>
         </div>
         </div>
    </div>

@endsection 
