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
                    <strong class="card-title">Data Table</strong>
                </div>
                <div class="card-body">
          <table id="bootstrap-data-table" class="table table-striped table-bordered">
            <thead>
              <tr>
                <th>Name</th>
                <th>Designation</th>
                <th>Eamil</th>
                <th>Phone</th>
                <th>Passing Year</th>
                <th>Address</th>
              </tr>
            </thead>
            <tbody>
              @foreach($exStudents as $student)
              <tr>
                <td>{{ $student->exStudentInfo->name }}</td>
                <td>{{ $student->ex_student_designation }}</td>
                <td>{{ $student->ex_student_phone }}</td>
                <td>{{ $student->exStudentInfo->email }}</td>
                <td>{{ date('Y', strtotime($student->ex_student_passing_year)) }}</td>
                <td>{{ $student->ex_student_address }}</td>
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


    </div><!-- /#right-panel -->
@endsection