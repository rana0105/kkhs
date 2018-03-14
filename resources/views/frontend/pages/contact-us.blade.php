@extends('frontend.layouts.main')
@section('content')
<!-- banner -->
	<div class="inner_page_agile">

	</div>
	<!--//banner -->
	<!-- short-->
	<div class="services-breadcrumb">
		<div class="inner_breadcrumb">
			<ul class="short_ls">
				<li>
					<a href="{{url('/')}}">Home</a>
					<span>| |</span>
				</li>
				<li>Contact Us</li>
			</ul>
		</div>
	</div>
	<!-- //short-->
	<!-- contact -->
	<div class="contact">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>C</span>ontact
					<span>U</span>s
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="row">
				<div class="col-md-6 contact-text1">
					<h4>Contact Our
						<span>Best Study</span>
					</h4>
					<p style="text-align: justify;">Aliquam erat volutpat. Duis vulputate tempus laoreet.Aliquam erat volutpat. Duis vulputate tempus laoreet.Aliquam erat volutpat. Duis vulputate tempus laoreet. Aliquam erat volutpat. Duis vulputate tempus laoreet.Aliquam erat volutpat. Duis vulputate tempus laoreet. Aliquam erat volutpat. Duis vulputate tempus laoreet.Aliquam erat volutpat. Duis vulputate tempus laoreet.Aliquam erat volutpat. Duis vulputate tempus laoreet. Aliquam erat volutpat. Duis vulputate tempus laoreet.Aliquam erat volutpat. Duis vulputate tempus laoreet.
					</p>
				</div>
				<div class="col-md-6 contact-w3lsright">
					<iframe src="https://www.google.com/maps/embed?pb=!1m27!1m12!1m3!1d51173.53719920527!2d88.67328856450916!3d24.764432629263794!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m12!3e6!4m4!1s0x39fb8429062f199b%3A0x376747220e728377!3m2!1d24.764436699999997!2d88.70830819999999!4m5!1s0x39fb8429062f199b%3A0x376747220e728377!2sK.K.+HIGH+SCHOOL%2CMANDA%2CNAOGAON%2C+Manda+Upazila!3m2!1d24.764436699999997!2d88.70830819999999!5e1!3m2!1sen!2sbd!4v1517119601094" allowfullscreen></iframe>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="contact-lsleft">
		<div class="container">
			<div class="address-grid">
				<h4 style="padding-top: 2%;">Contact Details</h4>
				<ul class="w3_address">
					<li>
						<span class="fa fa-globe" aria-hidden="true"></span>Kayapara Kamarkuri, Manda, Naogaon
					</li>
					<li>
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
						<a href="mailto:ra.ranacse@gmail.com">ra.ranacse@gmail.com</a>
					</li>
					<li>
						<span class="fa fa-phone" aria-hidden="true"></span>+001 234 5678
					</li>
				</ul>
			</div>
			<h4 class="contact-grid-h">Get In Touch</h4>
			<form action="{{ route('contact.post') }}" method="POST">
				{{ csrf_field() }}
				<div class="row">
					<div class="col-md-6">
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
						<div class="">
						<input type="text" name="name" placeholder="Name" required="">
					</div>
					<div class="">
						<input type="email" name="email" placeholder="Email" required="">
					</div>
					<div class="">
						<input type="text" name="phone" placeholder="Phone Number" required="">
					</div>
					</div>
					<div class="col-md-6">
						<div class="">
						<textarea name="message" placeholder="Message..." required=""></textarea>
					</div>
					</div>
				</div>
				<input type="submit" value="Submit" style="margin-bottom: 2%;">
			</form>
		</div>
	</div>
	<!-- //contact -->
@endsection