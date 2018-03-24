@extends('frontend.layouts.main')
@section('content')
    <div class="customAlert">
      <div class="customAlert-style">
        <div class="d-flex justify-content-center alert-text-style">
          <h5>Data Not Found</h5>
        </div>
      </div>
    </div>
	<div class="inner_page_agile">

	</div>
	<div class="search-breadcrumb d-flex justify-content-center">
      <form class="form-style-search" action="">
          <div class="input-group col-md-12">
              <input type="text" class="searchExStudent form-control" placeholder="Search...." />
              <span class="input-group-btn">
                  <button class="btn button-style" type="button">
                      <i class="fa fa-search"></i>
                  </button>
              </span>
          </div>  
      </form>
	</div>
<div class="container">
	<div class="row pt-md result">
    @if(sizeof($exStudent)>0)
    @foreach($exStudent as $student)
		<div class="col-md-3 profile">
      <div class="img-box">
        <img src="{{ asset('uploadfile/images') }}/{{ $student ? $student->ex_student_image : 'image.jpg' }}" class="img-responsive img-style img-thumbnail">
        <ul class="text-center">
          <?php $className = ['fa fa-facebook','fa fa-twitter','fa fa-linkedin']; $i = 0; ?>
            @if($student ? $student->social_link : '')
                @foreach(explode(',', $student->social_link) as $key => $link)
                <a target="blank" href="{{ $link }}"><li><i class="{{ $className[$i++] }}"></i></li></a>
                  @if($key == 2 )
                    @php break @endphp
                  @endif
                @endforeach
            @endif
        </ul>
      </div>
      <div class="profile-text">
        <h5>{{ $student->exStudentInfo ? $student->exStudentInfo->name : ''}}</h5>
        <h6>{{ $student ? $student->ex_student_designation : '' }}</h6>
        <a href="" data-id="{{ $student->user_id }}" data-toggle="modal" data-target=".bd-example-modal-lg" class="exstudent_show_modal">See Details</a>
      </div>
    </div>
    @endforeach
    @endif
	</div>
</div>

<!-- modal -->
    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content" style="text-align: center;">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="row exStudent-show">
          	
          </div>
          <div class="modal-footer">
          </div>
          </div>
          
        </div>
    </div>
<!-- //modal -->
@endsection
@section('script')
<script type="text/javascript">
$(document).on('click', '.exstudent_show_modal', function() {
     var id = $(this).attr('data-id');
       $.get('/exStudentInfo/'+id, function(data){
       $('.bd-example-modal-lg').find('.exStudent-show').first().html(data);
    });
});
$(document).ready(function(){
  $('.searchExStudent').keyup(function(){
    var searchKey = $(this).val();
    $.ajax({
      url:'{{ URL::to('/searchExStudent') }}',
      type: "get",
      data: {
        'searchKey':searchKey,
      },
      success: function(data) {
        if (typeof data !== 'undefined' && data.length > 0) {
        var result = '';
        $.each(data, function(index, value){
          result += '<div class="col-md-3 profile">';
          result += '<div class="img-box">';
          if (value ? value.ex_student_image : '') {
            result += '<img src="/uploadfile/images/'+value.ex_student_image+'" class="img-responsive img-style img-thumbnail">';
          }else{
            result += '<img src="/uploadfile/images/image.jpg" class="img-responsive img-style img-thumbnail">';
          }
          result +='<ul class="text-center">';
          var sclass = ['fa fa-facebook','fa fa-twitter','fa fa-linkedin'];
          var i = 0;
          if (value ? value.social_link : '') {
            $.each(value.social_link.split(","), function(key, link){
              result +='<a target="blank" href="'+link+'"><li><i class="'+sclass[i++]+'"></i></li></a>';
              if (key == 2) {
                return false;
              }
            });
          }
          result +='</ul>'
          result +='</div>';
          result +='<div class="profile-text">';
          if (value.ex_student_info ? value.ex_student_info.name : '') {
            result +='<h5>'+value.ex_student_info.name+'</h5>';
          }else{
            result +='<h5></h5>';
          }
          if (value ? value.ex_student_designation : '') {
            result +='<h6>'+value.ex_student_designation+'</h6>';
          }else{
            result +='<h6></h6>';
          }
          result +='<a href="" data-id="'+value.user_id+'" data-toggle="modal" data-target=".bd-example-modal-lg" class="exstudent_show_modal">See Details</a>';
          result +='</div>';
          result +='</div>';
        });
        $('.result').html(result);
      }else{
        $('.customAlert').css('display','block');
        setTimeout(function(){ 
          $('.customAlert').css('display','none');
         }, 2000);
      }
      }
    });
  });
});
</script>
@endsection