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
                    <li class="active">Student</li>
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
                    @can('add_users')
                    <strong class="card-title"><a href="{{ route('users.create') }}">Create</a></strong>
                    @endcan
                </div>
                <div class="card-body">
          <table id="bootstrap-data-table" class="table table-striped table-bordered">
            <thead>
              <tr>
                <th>Name</th>
                <th>Username</th>
                <th>Email</th>
                <th>Stage</th>
                <th>Status</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              @foreach($students as $student)
              <tr>
                <td>{{ $student->studentsDetails ? $student->studentsDetails->name : '' }}</td>
                <td>{{ $student->studentsDetails ? $student->studentsDetails->username : '' }}</td>
                <td>{{ $student->studentsDetails ? $student->studentsDetails->email : '' }}</td>
                <td>
                    @if($student->studentsDetails ? $student->studentsDetails->stage == 1 : '')
                    <span class="badge badge-success">Approved</span>
                    @else
                    <span class="badge badge-warning">Pending</span>
                    @endif
                </td>
                <td>
                    @if($student->student_status == 1 )
                    Current Student
                    @elseif($student->student_status == 2 )
                    Ex Student
                    @else
                    Default
                    @endif
                </td>
                <td>
                    <a href="{{ route('students.edit', $student->user_id) }}">
                        <button class="btn btn-style btn-small btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                    </a>
                    {!! Form::open(['route' => ['users.destroy', $student->user_id ], 'method' => 'DELETE', 'class'=>'delete_form', 'style'=>'display:inline' ])!!}
                        <button class="btn btn-style btn-small btn-danger delete-btn"><i class="fa fa-trash" aria-hidden="true"></i></button>
                   {!! Form::close() !!}
                </td>
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