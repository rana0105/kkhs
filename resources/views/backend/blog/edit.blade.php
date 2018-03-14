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
                        <li><a href="{{route('blogs.index')}}">Blog</a></li>
                        <li class="active">Edit</li>
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
                            <strong class="card-title">Edit</strong>
                        </div>
                        <div class="card-body">
                          {!! Form::open(['route' => ['blogs.update', $blog->id ], 'method' => 'PUT', 'enctype'=>'multipart/form-data', 'file'=>'true' ])!!}
                            {{csrf_field()}}
                            <div class="form-group row">
                              <label for="blogcategories_id" class="col-sm-2 col-form-label">Title</label>
                              <div class="col-sm-8">
                                {{ Form::select('blogcategories_id', $cate , $blog->blogcategories_id, ["class" => 'form-control'])}}
                              </div>
                            </div>
                            <div class="form-group row">
                              <label for="inputTitle" class="col-sm-2 col-form-label">Title</label>
                              <div class="col-sm-8">
                                <input type="text" name="title" class="form-control" id="inputTitle" value="{{ $blog->title }}">
                              </div>
                            </div>
                            <div class="form-group row">
                              <label for="inputDescription" class="col-sm-2 col-form-label">Description</label>
                              <div class="col-sm-8">
                                <textarea name="description" id="inputDescription" cols="30" class="form-control" rows="5">{{ $blog->description }}</textarea>
                              </div>
                            </div>
                            <div class="form-group row">
                              <label for="inputTitle" class="col-sm-2 col-form-label">Image</label>
                              <div class="col-sm-8">
                                <input type="file" name="image" class="form-control" id="inputImage">
                                <img class="img img-thumbnail" style="margin-top: 3px;" src="{{ asset('uploadfile/images/'. $blog->image) }}" alt="{{ $blog->image }}" width="50" height="50">
                              </div>
                            </div>
                            <div class="form-group row">
                              <label for="status" class="col-sm-2 col-form-label">Status</label>
                              <div class="col-sm-8">
                                <label for="status" class="col-sm-2 col-form-label"><span class="badge badge-success">Approved</span></label>
                                <input type="checkbox" name="status" id="status" value="1">
                              </div>
                            </div>
                            <div class="form-group row">
                              <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary btn-small">Update</button>
                                {!! Form::close() !!}
                                {!! Form::open(['route' => ['blogs.destroy', $blog->id ], 'method' => 'DELETE', 'class'=>'delete_form', 'style'=>'display:inline' ])!!}
                                            <button class="btn btn-danger delete-btn">Reject</button>
                                 {!! Form::close() !!}
                              </div>
                            </div>
                          {{-- <div class="form-group row">
                              <div class="col-sm-10">
                                {!! Form::open(['route' => ['blogs.destroy', $blog->id ], 'method' => 'DELETE', 'class'=>'delete_form', 'style'=>'display:inline' ])!!}
                                            <button class="btn btn-danger delete-btn">Reject</button>
                                 {!! Form::close() !!}
                              </div>
                            </div> --}}
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection