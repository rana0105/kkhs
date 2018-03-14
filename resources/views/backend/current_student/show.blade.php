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
                        <li class="active">Show</li>
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
                            <strong class="card-title">Show</strong>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                              <label for="" class="col-sm-3 col-form-label">Name</label>
                              <div class="col-sm-9">
                                {{ $currentStuent->currentStudentInfo->name }}
                              </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                              <label for="" class="col-sm-3 col-form-label">Class</label>
                              <div class="col-sm-9">
                                {{ config('class.reverse_class.'.$currentStuent->student_class) }}
                              </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                              <label for="" class="col-sm-3 col-form-label">Section</label>
                              <div class="col-sm-9">
                                {{ config('section.reverse_section.'.$currentStuent->student_section) }}
                              </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                              <label for="" class="col-sm-3 col-form-label">Email</label>
                              <div class="col-sm-9">
                                {{ $currentStuent->currentStudentInfo->email }}
                              </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                              <label for="" class="col-sm-3 col-form-label">Phone</label>
                              <div class="col-sm-9">
                                {{ $currentStuent->student_phone }}
                              </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                              <label for="" class="col-sm-3 col-form-label">Father Name</label>
                              <div class="col-sm-9">
                                {{ $currentStuent->student_father_name }}
                              </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                              <label for="" class="col-sm-3 col-form-label">Mother Name</label>
                              <div class="col-sm-9">
                                {{ $currentStuent->student_mother_name }}
                              </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                              <label for="" class="col-sm-3 col-form-label">Parents Phone</label>
                              <div class="col-sm-9">
                                {{ $currentStuent->student_parent_phone }}
                              </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                              <label for="" class="col-sm-3 col-form-label">Address</label>
                              <div class="col-sm-9">
                                {{ $currentStuent->student_address }}
                              </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group row">
                              <label for="" class="col-sm-3 col-form-label">Remark</label>
                              <div class="col-sm-9">
                                {!! $currentStuent->student_remark !!}
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection