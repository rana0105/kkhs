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
                    <li class="active">Permission</li>
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
	                    <strong class="card-title"><a href="{{ route('permissions.create') }}">Create</a></strong>
	                    @endcan
	                </div>
            		<div class="card-body">
		          		<table id="bootstrap-data-table" class="table table-striped table-bordered">
				            <thead>
				              <tr>
				                <th>Name</th>
								<th>Guard Name</th>
								<th>Display Name</th>
				                <th>Action</th>
				              </tr>
				            </thead>
				            <tbody>
				              @foreach($permissions as $permission)
				              <tr>
				                <td>{{ $permission->name }}</td>
								<td>{{ $permission->guard_name }}</td>
								<td>{{ $permission->display_name }}</td>
				                <td>
				                    <a href="{{ route('permissions.edit', $permission->id) }}">
				                        <button class="btn btn-style btn-small btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
				                    </a>
				                    {!! Form::open(['route' => ['permissions.destroy', $permission->id ], 'method' => 'DELETE', 'class'=>'delete_form', 'style'=>'display:inline' ])!!}
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