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
				<li>Blog Home Page</li>
			</ul>
		</div>
	</div>
    <div class="container">
      <div class="row">
        <div class="col-md-8" style="padding-top: 25px;">
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
                          <form action="{{ route('blog.post.store') }}" method="POST" enctype="multipart/form-data" file="true">
                            {{csrf_field()}}
                            <div class="form-group row">
                              <label for="blogcategories_id" class="col-sm-2 col-form-label">Category</label>
                              <div class="col-sm-10">
                                <select name="blogcategories_id" class="form-control" id="blogcategories_id" required="">
                                    @foreach($blogCat as $cat)
                                        <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                                    @endforeach
                                </select>
                                @if ($errors->has('title'))
                                    <span class="help-block text-danger">
                                        <strong>{{ $errors->first('title') }}</strong>
                                    </span>
                                @endif
                              </div>
                            </div>
                            <div class="form-group row">
                              <label for="inputTitle" class="col-sm-2 col-form-label">Title</label>
                              <div class="col-sm-10">
                                <input type="text" name="title" class="form-control" id="inputTitle" placeholder="Title" required="">
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
                                <textarea name="description" id="inputDescription" cols="30" class="form-control" rows="5" placeholder="Description"></textarea>
                                @if ($errors->has('description'))
                                    <span class="help-block text-danger">
                                        <strong>{{ $errors->first('description') }}</strong>
                                    </span>
                                @endif
                              </div>
                            </div>
                            <div class="form-group row">
                              <label for="inputTitle" class="col-sm-2 col-form-label">Image</label>
                              <div class="col-sm-10">
                                <input type="file" name="image" class="form-control" id="inputImage" required="">
                                @if ($errors->has('image'))
                                    <span class="help-block text-danger">
                                        <strong>{{ $errors->first('image') }}</strong>
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
        <div class="col-md-4">
          <div class="card my-4">
            <h5 class="card-header">Categories</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">{{ $blogCat[0]['name'] }}</a>
                    </li>
                    <li>
                      <a href="#">{{ $blogCat[1]['name'] }}</a>
                    </li>
                    <li>
                      <a href="#">{{ $blogCat[2]['name'] }}</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">{{ $blogCat[3]['name'] }}</a>
                    </li>
                    <li>
                      <a href="#">{{ $blogCat[4]['name'] }}</a>
                    </li>
                    <li>
                      <a href="#">{{ $blogCat[5]['name'] }}</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="card my-4">
            <h5 class="card-header">Popular Post</h5>
            <div class="card-body">
              You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
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