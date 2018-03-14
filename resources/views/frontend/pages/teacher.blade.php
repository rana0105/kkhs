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
				<li>Teacher's</li>
			</ul>
		</div>
	</div>
	<!-- //short-->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="row maincontent">
				<div class="d-flex justify-content-center tab">
					<nav class="tab-style">
					  <div class="nav nav-tabs" id="nav-tab" role="tablist">
					    <a class="nav-item nav-link active" id="nav-currentteacher-tab" data-toggle="tab" href="#nav-currentteacher" role="tab" aria-controls="nav-currentteacher" aria-selected="true">Current Teacher</a>
					    <a class="nav-item nav-link" id="nav-exteacher-tab" data-toggle="tab" href="#nav-exteacher" role="tab" aria-controls="nav-exteacher" aria-selected="false">Ex Teacher</a>
					  </div>
					</nav>
				</div>
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-currentteacher" role="tabpanel" aria-labelledby="nav-currentteacher-tab">
					  	<section class="team">
						  <div class="container">
						    <div class="row">
						      <div class="col-md-12">
						          <h6 class="description">Current Teacher</h6>
						          <div class="row pt-md">
						          	@foreach($cuprofile as $currentTeacher)
						          	<div class="col-md-6">
						          		<div class="row">
						          			<div class="col-md-6 profile">
								              <div class="img-box">
								              	<img src="{{ asset('uploadfile/images') }}/{{ $currentTeacher ? $currentTeacher->teacher_image : 'image.jpg' }}" class="img-responsive img-style img-thumbnail">
								              </div>
								            </div>
								            <div class="col-md-6">
								            	<div class="info-style">
								            		<h4>{{ $currentTeacher->teachersDetails->name }}</h4>
								              		<h6 class="style-h">{{ $currentTeacher->teachersDetails->email }}</h6>
								              		<h6 class="style-h">{{ $currentTeacher->teacher_phone }}</h6>
								              		<h6 class="style-h">{{ $currentTeacher->teacher_education }}</h6>
								              		<h6 class="style-h">{{ $currentTeacher->teacher_desingnation }}</h6>
								              		<h6 class="style-h">{{ $currentTeacher->teacher_institute }}</h6>
								              		<h6 class="style-h">{{ $currentTeacher->teacher_address }}</h6>
								              		<div class="img-box-icon">
								              			<ul class="text-left">
								                  <?php $className = ['fa fa-facebook','fa fa-twitter','fa fa-linkedin']; $i = 0; ?>
								                  	@if($currentTeacher->social_link != null)
						                              	@foreach(explode(',', $currentTeacher->social_link) as $key => $link)
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
						          </div>
						      </div>
						    </div>
						  </div>
						</section>	
					</div>
					<div class="tab-pane fade" id="nav-exteacher" role="tabpanel" aria-labelledby="nav-exteacher-tab">
						<section class="team">
						  <div class="container">
					          <h6 class="description">Ex Teacher</h6>
					          <div class="row pt-md">
					          	@foreach($exprofile as $exTeacher)
					          	<div class="col-md-6">
					          		<div class="row">
					          			<div class="col-md-6 profile">
							              <div class="img-box">
							                <img src="{{ asset('uploadfile/images') }}/{{ $exTeacher ? $exTeacher->teacher_image : 'image.jpg' }}" class="img-responsive img-style img-thumbnail">
							              </div>
							            </div>
							            <div class="col-md-6">
							            	<div class="info-style">
							            		<h4>{{ $exTeacher->teachersDetails->name }}</h4>
							              		<h6>{{ $exTeacher->teacher_desingnation }}</h6>
							              		<h6>{{ $exTeacher->teacher_education }}</h6>
							              		<p><b>{{ $exTeacher->teacher_phone }}</b></p>
							              		<p><b>{{ $exTeacher->teachersDetails->email }}</b></p>
							              		<p><b>{{ $exTeacher->teacher_address }}</b></p>
							              		<div class="img-box-icon">
								              			<ul class="text-left">
								                  <?php $className = ['fa fa-facebook','fa fa-twitter','fa fa-linkedin']; $i = 0; ?>
								                  	@if($exTeacher->social_link != null)
						                              	@foreach(explode(',', $exTeacher->social_link) as $key => $link)
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
					          </div>
						  </div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection