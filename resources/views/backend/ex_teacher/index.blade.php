@extends('backend.layouts.dashboard')
@section('content')
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
                    <li class="active">Ex Teacher</li>
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
                    <strong class="card-title">Ex Teacher</strong>
                </div>
                <div class="card-body">
          <table id="bootstrap-data-table" class="table table-striped table-bordered">
            <thead>
              <tr>
                <th>Name</th>
                <th>Designation</th>
                <th>Eamil</th>
                <th>Phone</th>
                <th>Education</th>
                <th>Address</th>
              </tr>
            </thead>
            <tbody>
              @foreach($exTeachers as $teacher)
              <tr>
                <td>{{ $teacher->teachersDetails->name }}</td>
                <td>{{ $teacher->teacher_desingnation }}</td>
                <td>{{ $teacher->teacher_phone }}</td>
                <td>{{ $teacher->teachersDetails->email }}</td>
                <td>{{ $teacher->teacher_education }}</td>
                <td>{{ $teacher->teacher_address }}</td>
              </tr>
              @endforeach
            </tbody>
          </table>
                </div>
            </div>
        </div>


        </div>
    </div><!-- .animated -->
</div><!-- .content -->
@endsection