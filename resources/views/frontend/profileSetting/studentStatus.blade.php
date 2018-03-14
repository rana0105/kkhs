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
				<li>Change Student Status</li>
			</ul>
		</div>
	</div>
<section class="section3">
		<div class="container">
			<div class="bd-example bd-example-tabs">
			  <div class="row">
			    <div class="col-md-3 left-profile-style">
			      <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
			        <a class="nav-link active show" id="v-pills-student-status-tab" data-toggle="pill" href="#v-pills-student-status" role="tab" aria-controls="v-pills-student-status" aria-selected="false">Student Status</a>
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
			          <form action="{{ route('student.status.update', $profile->id) }}" method="POST">
			          	{{ csrf_field() }}
						  <div class="form-group row">
						    <label for="status" class="col-sm-3 col-form-label">Student Status</label>
						    <div class="col-sm-9">
								<select name="status" id="status"  class="form-control" required="">
					                @foreach(config('studentStatus.reverse_status') as $key => $status)
					                    <option value="{{ $key }}" {{ $key == $profile->studentStatus->student_status ? 'selected':'' }}>{{ $status }}</option>
					                @endforeach
					            </select>
						    </div>
						  </div>
						  <div class="form-group row">
						    <div class="col-sm-9">
						      <button type="submit" class="btn button-style">Update</button>
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