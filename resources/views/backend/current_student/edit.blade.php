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
                        <li><a href="{{route('current-student.index')}}">Current Student</a></li>
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
                          {!! Form::open(['route' => ['current-student.update', $currentStuent->id ], 'method' => 'PUT', 'enctype'=>'multipart/form-data', 'file'=>'true' ])!!}
                            {{csrf_field()}}
                            <div class="form-group row">
                              <label for="student_remark" class="col-sm-3 col-form-label">Remark</label>
                              <div class="col-sm-9">
                                <textarea name="student_remark" id="student_remark"  class="form-control" rows="3">{{ $currentStuent->student_remark }}</textarea>
                              </div>
                            </div>
                            <div class="form-group row">
                              <div class="col-sm-6">
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