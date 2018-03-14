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
                        <li><a href="{{route('notices.index')}}">Notice</a></li>
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
                          <form action="{{ route('notices.store') }}" method="POST" enctype="multipart/form-data" file="true">
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
                              <label for="file" class="col-sm-2 col-form-label">File</label>
                              <div class="col-sm-8">
                                <input type="file" name="file" class="form-control" id="inputImage" required="">
                                @if ($errors->has('file'))
                                    <span class="help-block text-danger">
                                        <strong>{{ $errors->first('file') }}</strong>
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
 //  tinymce.init({
 //  selector: 'textarea',
 //  height: 300,
 //  theme: 'modern',
 //  plugins: 'print preview fullpage powerpaste searchreplace autolink directionality advcode visualblocks visualchars fullscreen image link media template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists textcolor wordcount tinymcespellchecker a11ychecker imagetools mediaembed  linkchecker contextmenu colorpicker textpattern help',
 //  toolbar1: 'formatselect | bold italic strikethrough forecolor backcolor | link | alignleft aligncenter alignright alignjustify  | numlist bullist outdent indent  | removeformat',
 //  image_advtab: true,
 //  templates: [
 //    { title: 'Test template 1', content: 'Test 1' },
 //    { title: 'Test template 2', content: 'Test 2' }
 //  ],
 //  content_css: [
 //    '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
 //    '//www.tinymce.com/css/codepen.min.css'
 //  ]
 // });
</script>
@endsection