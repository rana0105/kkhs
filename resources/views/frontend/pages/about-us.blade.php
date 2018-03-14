@extends('frontend.layouts.main')
@section('content')
	<!-- banner -->
	<div class="inner_page_agile">

	</div>
	<!--//banner -->
	<!-- short -->
	<div class="services-breadcrumb">
		<div class="inner_breadcrumb">
			<ul class="short_ls">
				<li>
					<a href="{{url('/')}}">Home</a>
					<span>| |</span>
				</li>
				<li>About Us</li>
			</ul>
		</div>
	</div>
	<!-- //short-->
	<!-- about -->
	<div class="about-sec" id="about">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>A</span>bout
					<span>U</span>s
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="row">
				<div class="col-md-6 about_bottom_left">
					<h4>Welcome to
						<span>{{ $about->title }}</span>
					</h4>
					{!! substr($about->description, 0, 598) !!}
					<a class="button-style" href="{{url('register')}}">Join Now</a>
				</div>
				<!-- Stats-->
				<div class="col-md-6 about2-info">
					<img class="img img-responsive" src="{{asset('uploadfile/images/'. $about->file)}}" alt="{{ $about->file }}" width="100%" />
					<div class="text-style-p">
						{!! substr($about->description, 599) !!}
					</div>
				</div>
				<!-- //Stats -->
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //about -->
	<!-- Achievements -->
	<div class="">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>O</span>ur
					<span>A</span>chievements
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="">
				@foreach($achieves as $achieve)
					<div class="row work-info">
						<div class="col-md-3 work-grid work-left">
							<h4>{{ $achieve->date }}</h4>
						</div>
						<div class="col-md-9 work-grid achieve-style">
							<h5>{{ $achieve->title }}</h5>
							{!! $achieve->description !!}
						</div>
					</div>
					<hr>
				@endforeach
			</div>
		</div>
	</div>
	<!-- //Achievements -->
	<!-- about-team -->
	<div class="team">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>O</span>ur
					<span>F</span>aculties
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="row">
				@foreach($faculties as $teacher)
				<div class="col-md-3 col-sm-6 col-xs-6 team-grids">
					<div class="thumbnail team-agileits">
						<img src="{{ asset('uploadfile/images') }}/{{ $teacher ? $teacher->teacher_image : 'image.jpg' }}" class="img-responsive img-style">
						<div class="effectd-caption">
							<h4>{{ $teacher->teachersDetails->name }}</h4>
							<p>{{ $teacher->teacher_desingnation }}</p>
							<div class="social-lsicon">
								<div class="img-box-icon">
			              			<ul class="text-center">
					                  <?php $className = ['fa fa-facebook','fa fa-twitter','fa fa-linkedin']; $i = 0; ?>
					                  	@if($teacher->social_link != null)
			                              	@foreach(explode(',', $teacher->social_link) as $key => $link)
				                              <a href="{{ $link }}"><li><i class="{{ $className[$i++] }}"></i></li></a>
				                              	@if($key == 2 )
				                              		@php break @endphp
				                              	@endif
			                              	@endforeach
			                            @endif
					                </ul>
			              		</div>
							</div>
						</div>
					</div>
				</div>
				@endforeach
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //about-team -->

@endsection