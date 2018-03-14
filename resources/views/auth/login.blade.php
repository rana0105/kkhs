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
				<li>Login</li>
			</ul>
		</div>
	</div>
	<!-- //short-->
	<div class="register-form-main">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>L</span>ogin
					<span>F</span>orm
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="login-form">
				<form method="POST" action="{{ url('login') }}">
					@if(session('success'))
						<div class="alert alert-success">
							{{ session('success') }}
						</div>
					@endif
					@if(session('warning'))
						<div class="alert alert-success">
							{{ session('warning') }}
						</div>
					@endif
					@if(session('error'))
						<div class="alert alert-danger">
							{{ session('error') }}
						</div>
					@endif
					<input name="_token" type="hidden" value="{{ csrf_token() }}"/>
					<div class="form-group{{ $errors->has('emailuser') ? ' has-error' : '' }}">
						<p>Email or Username</p>
						<input id="email" type="text" name="emailuser" value="{{ old('emailuser') }}" required="" autofocus="">
						@if ($errors->has('emailuser'))
                            <span class="help-block">
                                <strong>{{ $errors->first('emailuser') }}</strong>
                            </span>
                        @endif
					</div>
					<div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
						<div class="login-form-input overflow-fix">
							<p>Password</p>
							<input id="password" type="password" name="password" required="">
							@if ($errors->has('password'))
	                            <span class="help-block">
	                                <strong>{{ $errors->first('password') }}</strong>
	                            </span>
	                        @endif
						</div>
					</div>
					<label class="anim">
						<input type="checkbox" class="checkbox">
						<span> Remember me ?</span>
					</label>
					<div class="login-agileits-bottom wthree">
						<h6>
							<a href="#">Forgot password?</a>
						</h6>
					</div>
					<input type="submit" value="Login">
				</form>
				<div class="register-forming">
					<p>To Register New Account --
						<a href="{{url('register')}}">Click Here</a>
					</p>
				</div>
			</div>
		</div>
	</div>
@endsection