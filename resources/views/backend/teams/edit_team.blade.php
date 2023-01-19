@extends('admin.admin_master')

@section('content')

<div class="content-body" style="min-height: 788px;">
     <div class="container-fluid">
              <!-- row -->
         <div class="row">
              <div class="col-xl-12 col-lg-12">
              <div class="card">
                   <div class="card-header">
                        <h4 class="card-title">Edit new team  </h4>
                   </div>
                   <div class="card-body">
                        <div class="basic-form">
                             <form method="post" action="{{ route('team.update',$team->id) }}" enctype="multipart/form-data">
                                  @csrf
            <input type="hidden" name="old_img" value="{{ $team->team_img }}" >
                                  <div class="form-group">
                                  <label class="info-title">team Name </label>
                                  <input type="text" value="{{$team->team_title }}" name="team_title" class="form-control input-default ">
                                  @error('team_title')
                                       <span class="text-danger">{{ $message }}</span>
                                  @enderror
                                  </div>

                                  <div class="form-group">
                                  <label class="info-title">team Description </label>
                                  <textarea name="team_description" class="form-control" rows="4"
                                       id="comment">{{$team->team_description }}</textarea>
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
                                  <img id="showImage" src="{{asset($team->team_img ) }}"
                                       style="width: 100px; height: 100px;">
                                  </div>
                                  <input type="submit" class="btn btn-success" value="Update team">
                             </form>
                        </div>
                   </div>
              </div>
              </div>
         </div>
         </div>
    </div>
@endsection 
