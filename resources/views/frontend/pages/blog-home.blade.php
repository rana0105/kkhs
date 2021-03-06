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
				<li>Blog Home Page</li>
			</ul>
		</div>
	</div>
	<!-- //short-->
    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8 result" style="padding-top: 25px;">
          <!-- Blog Post -->
          @if(sizeof($blogs)>0)
            @foreach($blogs as $blog)
            <div class="card mb-4">
              <img class="card-img-top" src="{{ asset('uploadfile/images/'. $blog->image) }}" alt="Card image cap">
              <div class="card-body">
                <h2 class="card-title">{{ $blog->title }}</h2>{{ $blog->blogCategory->name }}
                <p class="card-text">{!! str_limit(strip_tags($blog->description), 100) !!}</p>
                <a href="{{route('blog.show', $blog->id)}}" class="btn button-style">Read More &rarr;</a>
              </div>
              <div class="card-footer text-muted">
                Posted on {{ date('F d, Y', strtotime($blog->created_at)) }} by
                @if($blog->blogPostUser->role_id == 1)
                <a href="#">Admin</a>
                @else
                <a href="#">{{ $blog->blogPostUser ? $blog->blogPostUser->name : '' }}</a>
                @endif
              </div>
            </div>
            @endforeach
          @else
            <div class="card-md-4">
              <h2 class="card-title">No Data Found</h2>
            </div>
          @endif
          <!-- Pagination -->
          <ul class="pagination justify-content-center mb-4">
            <li class="page-item">
              <a class="page-link" href="#">&larr; Older</a>
            </li>
            <li class="page-item disabled">
              <a class="page-link" href="#">Newer &rarr;</a>
            </li>
          </ul>

        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

          <!-- Search Widget -->
          <div class="card my-4">
            <h5 class="card-header">Search</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control searchBlog" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn button-style" type="button">Go!</button>
                </span>
              </div>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">Categories</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">{{ $category[0]['name'] }}</a>
                    </li>
                    <li>
                      <a href="#">{{ $category[1]['name'] }}</a>
                    </li>
                    <li>
                      <a href="#">{{ $category[2]['name'] }}</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">{{ $category[3]['name'] }}</a>
                    </li>
                    <li>
                      <a href="#">{{ $category[4]['name'] }}</a>
                    </li>
                    <li>
                      <a href="#">{{ $category[5]['name'] }}</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <!-- Side Widget -->
          <div class="card my-4">
            <h5 class="card-header">Popular Post</h5>
            <div class="card-body">
              You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
            </div>
          </div>

        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->
@endsection
@section('script')
<script type="text/javascript" src="http://momentjs.com/downloads/moment.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $('.searchBlog').keyup(function(){
    var searchKey = $(this).val();
    $.ajax({
      url:'{{ URL::to('/searchBlog') }}',
      type: "get",
      data: {
        'searchKey':searchKey,
      },
      success: function(data) {
        console.log(data);
        var result = '';
        $.each(data, function(index, value){
          result += '<div class="card mb-4">';
          result += '<img class="card-img-top" src="/uploadfile/images/'+value.image+'" alt="Card image cap">';
          result += '<div class="card-body">';
          result += '<h1 class="card-title">'+value ? value.title : '' +'</h1>';
          result += '<br>';
          result += '<h4>'+value.blog_category ? value.blog_category.name : '' +'</h4>';
          result += '<p class="card-text">'+value ? value.description.substring(0 ,100) : '' +'</p>';
          result += '<a href="/blog/'+value.id+'/show" class="btn button-style">Read More &rarr;</a>';
          result += '</div>';
          result += '<div class="card-footer text-muted">';
          result += 'Posted on '+moment().format('MMMM D, YYYY', value.created_at)+' by ';
              if(value.blog_post_user.role_id == 1){
                result += '<a href="#">Admin</a>';
              }else{
                result += '<a href="#">'+value.blog_post_user ? value.blog_post_user.name : '' +'</a>';
              }
          result +='</div>';
          result +='</div>';
        });
        $('.result').html(result);
      }
    });
  });
});
</script>
@endsection
