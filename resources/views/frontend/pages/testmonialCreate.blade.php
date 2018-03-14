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
				<li>Testmonial</li>
			</ul>
		</div>
	</div>
  <div class="container">
    <div class="row">
      <div class="col-md-12" style="padding-top: 25px;">
        <div class="card mb-4">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header">
                    <strong class="card-title">Create</strong>
                </div>
                <div class="card-body">
                  @if(session('success'))
                      <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>Success!</strong> {{ session('success') }}.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                  @endif
                  @if(session('danger'))
                      <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>Deleted!</strong> {{ session('danger') }}.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                  @endif
                  <form action="{{ route('testmonial.post.store') }}" method="POST">
                    {{csrf_field()}}
                    <div class="form-group row">
                      <label for="inputTitle" class="col-sm-2 col-form-label">Title</label>
                      <div class="col-sm-10">
                        <input type="text" name="title" class="form-control" id="inputTitle" value="{{ $testmonial->title or ''  }}" required="">
                        @if ($errors->has('title'))
                            <span class="help-block text-danger">
                                <strong>{{ $errors->first('title') }}</strong>
                            </span>
                        @endif
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="inputDescription" class="col-sm-2 col-form-label">Description</label>
                      <div class="col-sm-10">
                        <textarea name="description" id="inputDescription" cols="30" class="form-control" rows="5">{{ $testmonial->description or ''  }}</textarea>
                        @if ($errors->has('description'))
                            <span class="help-block text-danger">
                                <strong>{{ $errors->first('description') }}</strong>
                            </span>
                        @endif
                      </div>
                    </div>
                    <div class="form-group row">
                      <div class="col-sm-10">
                        <button type="submit" class="btn button-style">Create</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> 
  </div> 
@endsection
@section('script')
<script>
  $(document).ready(function () {
      tinymce.init({
      selector: 'textarea',
      });
  });
</script>
@endsection