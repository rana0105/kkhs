@extends('frontend.layouts.main')

@section('content')
<!-- short-->
  <div class="services-breadcrumb">
    <div class="inner_breadcrumb">
      <ul class="short_ls">
        <li>
          <a href="{{url('/')}}">Home</a>
          <span>| |</span>
        </li>
        <li>Register</li>
      </ul>
    </div>
  </div>
  <!-- //short-->
  <div class="register-form-main">
    <div class="container">
      <div class="title-div">
        <h3 class="tittle">
          <span>R</span>egister
          <span>F</span>orm
        </h3>
        <div class="tittle-style">

        </div>
      </div>
      <div class="login-form">
        <form method="POST" action="{{ url('register') }}">
          {{ csrf_field() }}
          <div class="">
            <p>Full Name </p>
            <input type="text" class="name" name="name" required="" />
          </div>
          <div class="">
            <p>User Name </p>
            <input id="lower" type="text" name="username" pattern="[a-z0-9]+" title="Only lowercase / numbers allowed" required="" />
            @if ($errors->has('username'))
                <span class="help-block">
                    <strong>{{ $errors->first('username') }}</strong>
                </span>
            @endif
          </div>
          <div class="">
            <p>E-mail</p>
            <input type="email"  name="email" required="" />
            @if ($errors->has('email'))
                <span class="help-block">
                    <strong>{{ $errors->first('email') }}</strong>
                </span>
            @endif
          </div>
          <div class="">
            <p>Password</p>
            <input type="password" class="password" name="password"  required="" />
            @if ($errors->has('password'))
                <span class="help-block">
                    <strong>{{ $errors->first('password') }}</strong>
                </span>
            @endif
          </div>
          <div class="">
            <p>Confirm Password</p>
            <input type="password" name="password_confirmation" required="">
            @if ($errors->has('password_confirmation'))
                <span class="help-block">
                    <strong>{{ $errors->first('password_confirmation') }}</strong>
                </span>
            @endif
          </div>
          <div class="">
            <p>*Only for Student Id</p>
            <input id="studentId" type="text" readonly="" name="student_id" required="" value="">
            @if ($errors->has('student_id'))
                <span class="help-block">
                    <strong>{{ $errors->first('student_id') }}</strong>
                </span>
            @endif
          </div>
          <div class="">
            <p>Assign Role</p>
            <label class="anim">
              <input type="radio" class="checkbox" name="role_id" required="" value="2" />
              <span>Teacher</span>
            </label>
            <label class="anim">
              <input type="radio" class="checkbox" name="role_id" required="" value="3" />
              <span>Student</span>
            </label>
            {{-- <label class="anim">
              <input type="radio" class="checkbox" name="role_id" required="" value="4" />
              <span>Parents</span>
            </label> --}}
          </div>
          {{-- <label class="anim">
            <input type="checkbox" class="checkbox">
            <span>I Accept Terms & Conditions</span>
          </label> --}}
          <input type="submit" value="Register">
        </form>
      </div>

    </div>
  </div>
@endsection

@section('style')

<style type="text/css">
</style>

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

	
