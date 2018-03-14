@extends('layouts.main')

@section('content')

{{-- <div class="container" style="margin-top: 5%;">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Reset Password</div>
                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form class="form-horizontal" role="form" method="POST" action="{{ route('password.email') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label">E-Mail Address</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Send to Email
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div> --}}

<!-- login form -->
<section class="login-form-area overflow-fix">
    <div class="container my-container">
        <div class="row">
            <div class="col-lg-12">
                <div class="login-form-header overflow-fix">
                    <h2>Reset Password</h2>
                </div>              
                <form class="login-form overflow-fix" role="form" method="POST" action="{{ route('password.email') }}">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    <input name="_token" type="hidden" value="{{ csrf_token() }}"/>
                    <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                        <div class="login-form-input overflow-fix">
                            <p>Email</p>
                            <input id="email" type="email" name="email" value="{{ old('email') }}" required="" autofocus="">
                            @if ($errors->has('email'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('email') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    
                    <div class="login-form-submit-btn overflow-fix">
                        <input type="submit" class="grren-btn" value="Send to Email">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- End login form -->

@endsection
