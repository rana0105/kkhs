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
                    <li><a href="{{route('users.index')}}">Users</a></li>
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
                        {!! Form::open(['route' => ['users.store'] ]) !!}
                            @include('user._form')
                            <!-- Submit Form Button -->
                            {!! Form::submit('Create', ['class' => 'btn btn-primary']) !!}
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')

<script type="text/javascript">
  function getDate()
  {
    var kk = 'KKHS';
    var auto = {{ $autoid->auto_id }}+1;
    var str = "" + auto;
    var pad = "0000";
    var ans = pad.substring(0, pad.length - str.length) + str;
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!
    var yyyy = today.getFullYear();
    var yy = yyyy.toString().substr(-2);
    if(dd<10){dd='0'+dd} if(mm<10){mm='0'+mm}
    today = kk+""+yy+""+mm+""+ans;
    document.getElementById("studentId").value = today;
  } 
  getDate();
</script>
@endsection