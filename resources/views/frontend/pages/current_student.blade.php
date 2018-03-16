@extends('frontend.layouts.main')
@section('content')
	<div class="inner_page_agile">

	</div>
	<div class="search-breadcrumb d-flex justify-content-center">
      <form class="form-style-search" action="">
          <div class="input-group col-md-12">
              <input type="text" class="form-control" placeholder="Search...." />
              <span class="input-group-btn">
                  <button class="btn button-style" type="button">
                      <i class="fa fa-search"></i>
                  </button>
              </span>
          </div>  
      </form>
  </div>
<div class="container">
	<div class="row pt-md">
    @if(sizeof($currentStudent)>0)
    @foreach($currentStudent as $student)
		<div class="col-md-3 profile">
      <div class="img-box">
        <img src="{{ asset('uploadfile/images') }}/{{ $student ? $student->student_image : 'image.jpg' }}" class="img-responsive img-style img-thumbnail">
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
        <h5>{{ $student->currentStudentInfo ? $student->currentStudentInfo->name : ''}}</h5>
        <p>Class:  <b>{{ $student ? config('class.reverse_class.'.$student->student_class) : '' }}</b>  Section:  <b>{{ $student ? config('section.reverse_section.'.$student->student_section) : '' }}</b></p>
        <a href="" data-id="{{ $student->user_id }}" data-toggle="modal" data-target=".bd-example-modal-lg" class="currentstudent_show_modal">See Details</a>
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
          <div class="row currentStudent-show">
          	
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
$(document).on('click', '.currentstudent_show_modal', function() {
     var id = $(this).attr('data-id');
       $.get('/currentStudentInfo/'+id, function(data){
       $('.bd-example-modal-lg').find('.currentStudent-show').first().html(data);
    });
});
</script>
@endsection