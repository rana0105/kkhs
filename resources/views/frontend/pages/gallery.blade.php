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
				<li>Gallery</li>
			</ul>
		</div>
	</div>
<div class="container-fluid" style="margin: 3% 0 3% 0">
	<div class="row">
        @foreach($galleries as $gallery)
        <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
            <a class="thumbnail fancybox" rel="ligthbox" href="{{ asset('uploadfile/images/'. $gallery->image) }}">
                <img class="img-responsive image_gallery_box" alt="" src="{{ asset('uploadfile/images/'. $gallery->image) }}" />
                <div class='text-center'>
                    <small class='text-muted'>{{$gallery->title}}</small>
                </div> 
            </a>
        </div> 
        @endforeach
        <div class="col-md-12 d-flex justify-content-center" style="margin-top: 2%;">
            {{ $galleries->links() }}
        </div>
	</div> 
</div> 
@endsection