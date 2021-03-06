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
				<li>Notice Show </li>
			</ul>
		</div>
	</div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8" style="padding-top: 25px;">
          @if(pathinfo($notice->file, PATHINFO_EXTENSION) == 'jpg' || pathinfo($notice->file, PATHINFO_EXTENSION) == 'png' || pathinfo($notice->file, PATHINFO_EXTENSION) == 'jpeg' || pathinfo($notice->file, PATHINFO_EXTENSION) == 'gif')
          <a target="blank" href="{{ route('print.notice', $notice->id) }}"><img class="img-fluid rounded" src="{{ asset('uploadfile/images/'. $notice->file) }}" alt=""></a>
          @else 
          <a href="{{ asset('uploadfile/images/'. $notice->file) }}">{{ asset('uploadfile/images/'. $notice->file) }}</a>
          @endif
          <hr>
        </div>
        <div class="col-md-4">
          <div class="card my-4">
            <h5 class="card-header">Title</h5>
            <div class="card-body">
              <p>{{ $notice->title }}</p> 
              <p>Posted on {{ date('F d, Y - H:i A', strtotime($notice->created_at)) }}</p>
            </div>
          </div>
          <div class="card my-4">
            <h5 class="card-header">Description</h5>
            <div class="card-body">
              {!! $notice->description !!}
            </div>
          </div>
        </div>
      </div>
    </div>
@endsection