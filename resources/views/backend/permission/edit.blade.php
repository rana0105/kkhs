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
                    <li><a href="{{route('permissions.index')}}">Permission</a></li>
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
                    <div class="panel-title" style="margin-left: 2%;">
                        <h4 class="title">Permssion Created</h4>
                        <h6>Note*:- Please Create Permission name Following Method->  view_name, add_name, edit_name, delete_name .</h6>
                        <hr/>
                    </div>
                    <div class="card-body">
                      {!! Form::model( $permission, ['route' => ['permissions.update', $permission->id], 'files' => true, 'method' => 'PUT']) !!}
                        {{csrf_field()}}
                        <div class="form-group row">
                          <label for="name" class="col-sm-2 col-form-label">Name</label>
                          <div class="col-sm-8">
                            <input type="text" name="name" id="name" class="form-control" value="{{ $permission->name }}">
                            <small class="text-danger">{{ $errors->first('name') }}</small>
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="display_name" class="col-sm-2 col-form-label">Display Name</label>
                          <div class="col-sm-8">
                            <input type="text" name="display_name" id="display_name" class="form-control" value="{{ $permission->display_name }}">
                                <small class="text-danger">{{ $errors->first('display_name') }}</small>
                          </div>
                        </div>
                        <div class="form-group row">
                          <div class="col-sm-10">
                            <button type="submit" class="btn btn-primary">Update</button>
                          </div>
                        </div>
                      {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection