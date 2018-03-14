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
				<li>Single Profile</li>
			</ul>
		</div>
	</div>
<section class="section3">
		<div class="container">
			<div class="bd-example bd-example-tabs">
			  <div class="row">
			    <div class="col-sm-3">
			    	<div class=" left-profile-style">
			    		<div class="profile-show">
				    		<div class="d-flex justify-content-center">
				    			<img src="{{ asset('uploadfile/images') }}/{{ $profile->exStudent ? $profile->exStudent->ex_student_image : 'image.jpg' }}" alt="{{ $profile->exStudent ? $profile->exStudent->ex_student_image : 'image.jpg' }}" width="120" height="120" class="rounded-circle">
				    		</div>
			              	<div class="d-flex justify-content-center social-icon-style">
				                <ul class="nav nav-pills text-center">
				                  <?php $className = ['fa fa-facebook','fa fa-twitter','fa fa-linkedin']; $i = 0; ?>
				                  	@if($profile->exStudent ? $profile->exStudent->social_link : '')
		                              	@foreach(explode(',', $profile->exStudent->social_link) as $key => $link)
			                              <a href="{{ $link }}"><li class="nav-item"><i class="{{ $className[$i++] }}"></i></li></a>
			                              @if($key == 2 )
			                              @php break @endphp
			                              @endif
		                              	@endforeach
		                            @endif
				                </ul>
			              	</div>
			              	<div style="margin-top: 5%; padding-bottom: 3%;">
			              		<h6>{{ $profile->name }}</h6>
				              	<p>{{ $profile->exStudent ? $profile->exStudent->ex_student_designation : '' }}</p>
				              	<p>Passing Year: {{ date('Y', strtotime($profile->exStudent ? $profile->exStudent->ex_student_passing_year : '')) }}</p>
			              	</div>
				    	</div>
			    	</div>
			    </div>
			    <div class="col-sm-9">
			    	<div class="right-profile-style">
				    	<div class="right-profile-style-show">
				    		<div class="row">
					    		<div class="col-4 text-right"><b>Name</b></div>
					    		<div class="col-8 text-left">{{ $profile->name }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Email</b></div>
					    		<div class="col-8 text-left">{{ $profile->email }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Phone</b></div>
					    		<div class="col-8 text-left">{{ $profile->exStudent ? $profile->exStudent->ex_student_phone : '' }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Education</b></div>
					    		<div class="col-8 text-left">{{ $profile->exStudent ? $profile->exStudent->ex_student_education : '' }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Institute</b></div>
					    		<div class="col-8 text-left">{{ $profile->exStudent ? $profile->exStudent->ex_student_education_institution : '' }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Profession</b></div>
					    		<div class="col-8 text-left">{{ $profile->exStudent ? $profile->exStudent->ex_student_profession : '' }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Designation</b></div>
					    		<div class="col-8 text-left">{{ $profile->exStudent ? $profile->exStudent->ex_student_designation : '' }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Organization</b></div>
					    		<div class="col-8 text-left">{{ $profile->exStudent ? $profile->exStudent->ex_student_profession_institute : '' }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Address</b></div>
					    		<div class="col-8 text-left">{{ $profile->exStudent ? $profile->exStudent->ex_student_address : '' }}</div>
					    	</div>
				    	</div>
			    	</div>
			    </div>
			  </div>
			</div>
		</div>
	</section>

@endsection