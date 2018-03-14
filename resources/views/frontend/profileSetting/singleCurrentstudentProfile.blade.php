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
				    			<img src="{{ asset('uploadfile/images') }}/{{ $profile->currentStudent ? $profile->currentStudent->student_image : 'image.jpg' }}" alt="{{ $profile->currentStudent ? $profile->currentStudent->student_image : 'image.jpg' }}" width="120" height="120" class="rounded-circle">
				    		</div>
			              	<div class="d-flex justify-content-center social-icon-style">
				                <ul class="nav nav-pills text-center">
				                  <?php $className = ['fa fa-facebook','fa fa-twitter','fa fa-linkedin']; $i = 0; ?>
				                  	@if($profile->currentStudent ? $profile->currentStudent->social_link : '')
		                              	@foreach(explode(',', $profile->currentStudent->social_link) as $key => $link)
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
				              	<p>Class: <b>{{ $profile->currentStudent ? config('class.reverse_class.'.$profile->currentStudent->student_class) : '' }}</b> Section: <b> {{ $profile->currentStudent ? config('section.reverse_section.'.$profile->currentStudent->student_section) : '' }}</b></p>
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
					    	{{-- <div class="row">
					    		<div class="col-4 text-right"><b>Class</b></div>
					    		<div class="col-8 text-left">{{ $profile->currentStudent ? config('class.reverse_class.'.$profile->currentStudent->student_class) : '' }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Section</b></div>
					    		<div class="col-8 text-left">{{ $profile->currentStudent ? config('section.reverse_section.'.$profile->currentStudent->student_section) : '' }}</div>
					    	</div> --}}
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Department</b></div>
					    		<div class="col-8 text-left">{{ $profile->currentStudent ? config('department.reverse_department.'.$profile->currentStudent->student_department) : '' }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Email</b></div>
					    		<div class="col-8 text-left">{{ $profile->email }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Phone</b></div>
					    		<div class="col-8 text-left">{{ $profile->currentStudent ? $profile->currentStudent->student_phone : '' }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Father Name</b></div>
					    		<div class="col-8 text-left">{{ $profile->currentStudent ? $profile->currentStudent->student_father_name : '' }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Mother Name</b></div>
					    		<div class="col-8 text-left">{{ $profile->currentStudent ? $profile->currentStudent->student_mother_name : '' }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Parents Phone</b></div>
					    		<div class="col-8 text-left">{{ $profile->currentStudent ? $profile->currentStudent->student_parent_phone : '' }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Address</b></div>
					    		<div class="col-8 text-left">{{ $profile->currentStudent ? $profile->currentStudent->student_address : '' }}</div>
					    	</div>
					    	<div class="row">
					    		<div class="col-4 text-right"><b>Remark</b></div>
					    		<div class="col-8 text-left">{!! $profile->currentStudent ? $profile->currentStudent->student_remark : '' !!}</div>
					    	</div>
				    	</div>
			    	</div>
			    </div>
			  </div>
			</div>
		</div>
	</section>

@endsection