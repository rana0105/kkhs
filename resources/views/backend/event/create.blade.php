@extends('backend.layouts.dashboard')
@section('content')
    <div class="breadcrumbs">
        <div class="col-sm-4">
            <div class="page-header float-left">
                <div class="page-title">
                    <h1>Dashboard</h1>
                </div>
            </div>
        </div>
        <div class="col-sm-8">
            <div class="page-header float-right">
                <div class="page-title">
                    <ol class="breadcrumb text-right">
                        <li><a href="{{url('/dashboard')}}">Dashboard</a></li>
                        <li><a href="{{route('event.index')}}">Event</a></li>
                        <li class="active">Create</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content mt-3">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Create</strong>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('event.store') }}" method="POST" enctype="multipart/form-data" file="true">
                            {{csrf_field()}}
                                <div class="form-group row">
                                  <label for="inputTitle" class="col-sm-2 col-form-label">Title</label>
                                  <div class="col-sm-8">
                                    <input type="text" name="title" class="form-control" id="inputTitle" placeholder="Title" required="">
                                    @if ($errors->has('title'))
                                        <span class="help-block text-danger">
                                            <strong>{{ $errors->first('title') }}</strong>
                                        </span>
                                    @endif
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <label for="inputTitle" class="col-sm-2 col-form-label">Date</label>
                                  <div class="col-sm-8">
                                    <input type="date" name="date" class="form-control" id="date" placeholder="Date" required="">
                                    @if ($errors->has('date'))
                                        <span class="help-block text-danger">
                                            <strong>{{ $errors->first('date') }}</strong>
                                        </span>
                                    @endif
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <label for="inputTitle" class="col-sm-2 col-form-label">Time</label>
                                  <div class="col-sm-8">
                                    <input type="text" name="time" class="form-control" id="inputtime" placeholder="Time" required="">
                                    @if ($errors->has('time'))
                                        <span class="help-block text-danger">
                                            <strong>{{ $errors->first('time') }}</strong>
                                        </span>
                                    @endif
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <label for="inputLocation" class="col-sm-2 col-form-label">Location</label>
                                  <div class="col-sm-8">
                                    <input type="text" name="location" class="form-control" id="inputLocation" placeholder="Location" required="">
                                    @if ($errors->has('location'))
                                        <span class="help-block text-danger">
                                            <strong>{{ $errors->first('location') }}</strong>
                                        </span>
                                    @endif
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <label for="inputDescription" class="col-sm-2 col-form-label">Description</label>
                                  <div class="col-sm-8">
                                    <textarea name="description" id="inputDescription" cols="30" class="form-control" rows="5" placeholder="Description"></textarea>
                                    @if ($errors->has('description'))
                                        <span class="help-block text-danger">
                                            <strong>{{ $errors->first('description') }}</strong>
                                        </span>
                                    @endif
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <label for="inputTitle" class="col-sm-2 col-form-label">Image</label>
                                  <div class="col-sm-8">
                                    <input type="file" name="image" class="form-control" id="inputImage" required="">
                                    @if ($errors->has('image'))
                                        <span class="help-block text-danger">
                                            <strong>{{ $errors->first('image') }}</strong>
                                        </span>
                                    @endif
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="col-sm-10">
                                    <button type="submit" class="btn btn-primary">Create</button>
                                  </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('script')
<script type="text/javascript">
    // $(document).ready(function(){ 
    //     $(function () {
    //         $('#datetimepicker4').datetimepicker();
    //     });
    // });
     
</script>
@endsection