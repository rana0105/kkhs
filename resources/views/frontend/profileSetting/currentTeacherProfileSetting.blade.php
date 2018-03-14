@extends('frontend.layouts.main')
@section('content')
	<div class="inner_page_agile">

	</div>
	<div class="services-breadcrumb">
		<div class="inner_breadcrumb">
			<ul class="short_ls">
				<li>
					<a href="{{url('/')}}">Home</a>
					<span>| |</span>
				</li>
				<li>Current Teacher</li>
			</ul>
		</div>
	</div>
<section class="section3">
		<div class="container">
			<div class="bd-example bd-example-tabs">
			  <div class="row">
			    <div class="col-md-3 left-profile-style">
			    	<div class="profile-show">
			              <div class="img-box">
			              	@if($profile->teacherInfo->teacher_image !=null)
			              	<img src="{{ asset('uploadfile/images') }}/{{ $profile->teacherInfo ? $profile->teacherInfo->teacher_image : 'image.jpg' }}" alt="{{ $profile->teacherInfo ? $profile->teacherInfo->teacher_image : 'image.jpg' }}" class="img-responsive img-style rounded-circle">
			              	@else
			              	<img src="{{ asset('uploadfile/images/image.jpg') }}" class="img-responsive img-style rounded-circle">
			              	@endif
			                <ul class="text-center">
			                  <?php $className = ['fa fa-facebook','fa fa-twitter','fa fa-linkedin']; $i = 0; ?>
			                  	@if($profile->teacherInfo->social_link != null)
	                              	@foreach(explode(',', $profile->teacherInfo->social_link) as $key => $link)
		                              <a href="{{ $link }}"><li><i class="{{ $className[$i++] }}"></i></li></a>
		                              	@if($key == 2 )
		                              		@php break @endphp
		                              	@endif
	                              	@endforeach
	                            @endif
			                </ul>
			              </div>
			              <h6>{{ $profile->name }}</h6>
			    	</div>
			      <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
			        <a class="nav-link active show" id="v-pills-student-status-tab" data-toggle="pill" href="#v-pills-student-status" role="tab" aria-controls="v-pills-student-status" aria-selected="false">Student Status</a>
			        <a class="nav-link" id="v-pills-userupdate-tab" data-toggle="pill" href="#v-pills-userupdate" role="tab" aria-controls="v-pills-userupdate" aria-selected="true">Change Profile</a>
			        <a class="nav-link" id="v-pills-myself-tab" data-toggle="pill" href="#v-pills-myself" role="tab" aria-controls="v-pills-myself" aria-selected="false">Update Myself</a>
			        <a class="nav-link" id="v-pills-password-tab" data-toggle="pill" href="#v-pills-password" role="tab" aria-controls="v-pills-password" aria-selected="false">Change Password</a>
			      </div>
			    </div>
			    <div class="col-md-8 right-profile-style">
			      <div class="tab-content" id="v-pills-tabContent">
			        <div class="tab-pane fade active show" id="v-pills-student-status" role="tabpanel" aria-labelledby="v-pills-student-status-tab">
			        	@if(session('success'))
		                  <div class="alert alert-success alert-dismissible fade show" role="alert"">
		                    {{ session('success') }}
		                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		                        <span aria-hidden="true">&times;</span>
		                    </button>
		                  </div>
		                @endif
		                @if(session('warning'))
		                  <div class="alert alert-warning alert-dismissible fade show" role="alert"">
		                    {{ session('warning') }}
		                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		                        <span aria-hidden="true">&times;</span>
		                    </button>
		                  </div>
		                @endif
		                @if(session('error'))
		                  <div class="alert alert-danger alert-dismissible fade show" role="alert"">
		                    {{ session('error') }}
		                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		                        <span aria-hidden="true">&times;</span>
		                    </button>
		                  </div>
		                @endif
			          <form action="{{ route('current.teacher.profile.status', $profile->id) }}" method="POST">
			          	{{ csrf_field() }}
						  <div class="form-group row">
						    <label for="teacher_status" class="col-sm-3 col-form-label">Teacher Status</label>
						    <div class="col-sm-9">
								<select name="teacher_status" id="teacher_status"  class="form-control" required="">
					                @foreach(config('teacherStatus.reverse_status') as $key => $status)
					                    <option value="{{ $key }}" {{ $key == $profile->teacherInfo->teacher_status ? 'selected':'' }}>{{ $status }}</option>
					                @endforeach
					            </select>
						    </div>
						  </div>
						  <div class="form-group row">
						    <div class="col-sm-9">
						      <button type="submit" class="btn button-style">Change</button>
						    </div>
						  </div>
						</form>
			        </div>
			        <div class="tab-pane fade" id="v-pills-userupdate" role="tabpanel" aria-labelledby="v-pills-userupdate-tab">
			          	<form action="{{ route('current.teacher.profile.update', $profile->id) }}" method="POST">
			          		{{ csrf_field() }}
						  <div class="form-group row">
						    <label for="name" class="col-sm-3 col-form-label">Teacher Name</label>
						    <div class="col-sm-9">
						      <input type="text" name="name" class="form-control" id="name" value="{{ $profile->name }}">
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="username" class="col-sm-3 col-form-label">User Name</label>
						    <div class="col-sm-9">
						      <input type="text" name="username" value="{{ $profile->username or old('username')}}"  class="form-control" required=""/>
								@if ($errors->has('username'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('username') }}</strong>
                                    </span>
                                @endif
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="email" class="col-sm-3 col-form-label">Teacher Email</label>
						    <div class="col-sm-9">
						      <input type="email" name="email" value="{{ $profile->email or old('email')}}"  class="form-control" required=""/>
								@if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
						    </div>
						  </div>
						  <div class="form-group row">
						    <div class="col-sm-10">
						      <button type="submit" class="btn button-style">Change</button>
						    </div>
						  </div>
					  	</form>
			        </div>
			        <div class="tab-pane fade" id="v-pills-myself" role="tabpanel" aria-labelledby="v-pills-myself-tab">
			          	<form action="{{ route('current.teacher.profile.myself', $profile->id) }}" method="POST" enctype="multipart/form-data" file="true">
			          		{{ csrf_field() }}
						  <div class="form-group row">
						    <label for="teacher_phone" class="col-sm-3 col-form-label">Phone</label>
						    <div class="col-sm-9">
						      <input type="tel" name="teacher_phone" class="form-control" id="teacher_phone" value="{{ $profile->teacherInfo ? $profile->teacherInfo->teacher_phone : '' }}" required="">
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="teacher_education" class="col-sm-3 col-form-label">Education</label>
						    <div class="col-sm-9">
						      <input type="text" name="teacher_education" class="form-control" id="teacher_education" value="{{ $profile->teacherInfo ? $profile->teacherInfo->teacher_education : '' }}" required="">
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="teacher_desingnation" class="col-sm-3 col-form-label">Designation</label>
						    <div class="col-sm-9">
						      <input type="text" name="teacher_desingnation" class="form-control" id="teacher_desingnation" value="{{ $profile->teacherInfo ? $profile->teacherInfo->teacher_desingnation : '' }}" required="">
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="teacher_institute" class="col-sm-3 col-form-label">Institute</label>
						    <div class="col-sm-9">
						      <input type="tel" name="teacher_institute" class="form-control" id="teacher_institute" value="{{ $profile->teacherInfo ? $profile->teacherInfo->teacher_institute : '' }}" required="">
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="teacher_address" class="col-sm-3 col-form-label"> Address</label>
						    <div class="col-sm-9">
						      <textarea name="teacher_address" id="teacher_address"  class="form-control" rows="3" required="">{{ $profile->teacherInfo ? $profile->teacherInfo->teacher_address : '' }}</textarea>
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="social_link" class="col-sm-3 col-form-label">Socail Link</label>
						    <div class="col-sm-9">
						      <input type="text" id="social_link" name="social_link[]" value="{{ $profile->teacherInfo ? $profile->teacherInfo->social_link : '' }}" data-role="tagsinput" style="width: 100%" class="form-control" />
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="teacher_image" class="col-sm-3 col-form-label">Teacher Image</label>
						    <div class="col-sm-9">
						      <input type="file" name="teacher_image" class="form-control" id="teacher_image" value="">
						      <div style="margin-top: 2%;">
						      	<img src="{{ asset('uploadfile/images') }}/{{ $profile->teacherInfo ? $profile->teacherInfo->teacher_image : 'image.jpg' }}" alt="{{ $profile->teacherInfo ? $profile->teacherInfo->teacher_image : 'image.jpg' }}" width="100" height="120" class="img img-thumbnail">
						      </div>
						    </div>
						  </div>
						  <div class="form-group row">
						    <div class="col-sm-10">
						      <button type="submit" class="btn button-style">Change</button>
						    </div>
						  </div>
					  	</form>
			        </div>
			        <div class="tab-pane fade" id="v-pills-password" role="tabpanel" aria-labelledby="v-pills-password-tab">
			          <form action="{{ route('current.teacher.profile.password', $profile->id) }}" method="POST">
			          	{{ csrf_field() }}
						  <div class="form-group row">
						    <label for="password" class="col-sm-3 col-form-label">Current Password</label>
						    <div class="col-sm-9">
								<input id="password" type="password" name="old_password" value="{{ $password or old('password') }}" class="form-control" required="" autofocus/>
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="new_password" class="col-sm-3 col-form-label">New Password</label>
						    <div class="col-sm-9">
						      <input id="new_password" type="password" name="new_password" class="form-control" required="" />
								@if ($errors->has('new_password'))
                                    <span class="help-block">
                                        <strong">{{ $errors->first('new_password') }}</strong>
                                    </span>
                                @endif
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="password-confirm" class="col-sm-3 col-form-label">Confirm Password</label>
						    <div class="col-sm-9">
						      <input id="password-confirm" type="password" name="password_confirmation" class="form-control" required="">

                                @if ($errors->has('password_confirmation'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password_confirmation') }}</strong>
                                    </span>
                                @endif
						    </div>
						  </div>
						  <div class="form-group row">
						    <div class="col-sm-10">
						      <button type="submit" class="btn button-style">Change</button>
						    </div>
						  </div>
					</form>
			        </div>
			      </div>
			    </div>
			  </div>
			</div>
		</div>
	</section>
@endsection
@section('script')
<script type="text/javascript">
	$(document).ready(function() {
		$('#social_link').tagsinput({
          maxTags: 3
        });
	});
</script>
@endsection