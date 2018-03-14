@extends('backend.layouts.dashboard')
@section('title', 'Edit User ' . $user->first_name)
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
                        <li><a href="{{route('teachers.index')}}">Teachers</a></li>
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
                        {!! Form::model($user, ['method' => 'PUT', 'route' => ['teachers.update',  $user->id ] ]) !!}
                            <!-- Name Form Input -->
                            <div class="form-group @if ($errors->has('name')) has-error @endif">
                                {!! Form::label('name', 'Name') !!}
                                {!! Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'Name']) !!}
                                @if ($errors->has('name')) <p class="help-block">{{ $errors->first('name') }}</p> @endif
                            </div>

                            <div class="form-group @if ($errors->has('username')) has-error @endif">
                                {!! Form::label('username', 'Username') !!}
                                {!! Form::text('username', null, ['class' => 'form-control', 'placeholder' => 'Username']) !!}
                                @if ($errors->has('username')) <p class="help-block">{{ $errors->first('username') }}</p> @endif
                            </div>

                            <!-- email Form Input -->
                            <div class="form-group @if ($errors->has('email')) has-error @endif">
                                {!! Form::label('email', 'Email') !!}
                                {!! Form::text('email', null, ['class' => 'form-control', 'placeholder' => 'Email']) !!}
                                @if ($errors->has('email')) <p class="help-block">{{ $errors->first('email') }}</p> @endif
                            </div>

                            <!-- password Form Input -->
                            <div class="form-group @if ($errors->has('password')) has-error @endif">
                                {!! Form::label('password', 'Password') !!}
                                {!! Form::password('password', ['class' => 'form-control', 'placeholder' => 'Password']) !!}
                                @if ($errors->has('password')) <p class="help-block">{{ $errors->first('password') }}</p> @endif
                            </div>

                            <div class="form-group @if ($errors->has('is_activated')) has-error @endif">
                                <input type="hidden" name="is_activated" value="1">
                            </div>

                            <!-- Roles Form Input -->
                            <div class="form-group @if ($errors->has('roles')) has-error @endif">
                                {!! Form::label('roles', 'Roles') !!}
                                {!! Form::select('roles', $roles, isset($user) ? $user->roles->pluck('id')->toArray() : null,  ['class' => 'form-control']) !!}
                                @if ($errors->has('roles')) <p class="help-block">{{ $errors->first('roles') }}</p> @endif
                            </div>



                            <div class="form-group @if ($errors->has('is_activated')) has-error @endif">
                                <select name="teacher_status" id="teacher_status" class="form-control">
                                    @foreach(config('teacherStatus.reverse_status') as $key => $status)
                                        <option value="{{ $key }}" {{ $key == $user->teacherInfo->teacher_status ? 'selected':'' }}>{{ $status }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group @if ($errors->has('stage')) has-error @endif">
                                <select name="stage" id="stage" class="form-control">
                                    @foreach(config('stage.reverse_stage') as $key => $stage)
                                        <option value="{{ $key }}" {{ $key == $user->stage ? 'selected':'' }}>{{ $stage }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <!-- Permissions -->
                            {{-- @if(isset($user))
                                @include('shared._permissions', ['closed' => 'true', 'model' => $user ])
                            @endif --}}
                            {!! Form::submit('Save Changes', ['class' => 'btn btn-primary']) !!}
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection