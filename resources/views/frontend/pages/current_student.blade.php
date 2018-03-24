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
  <div class="row">
    <div class="col-md-12 d-flex justify-content-center">
      <div class="f-style-text">
        <h6>Search Filtering Student</h6>
      </div>
    </div>
  </div>
	<div class="search-breadcrumb d-flex justify-content-center">
    
    <div class="row filter-style">
      {{-- <form class="form-style-search" action=""> --}}
          <div class="col-md-3">
            <div class="form-group row">
              <label for="name" class="col-md-4 col-form-label">Name/ID</label>
                <div class="col-md-8">
                  <input type="text" name="name" class="form-control name" id="name">
                </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="form-group row">
              <label for="class" class="col-md-4 col-form-label">Class</label>
                <div class="col-md-8">
                  <select name="class" id="class" class="form-control class">
                    <option value="">Select</option>
                    <option value="0">Six</option>
                    <option value="1">Seven</option>
                    <option value="2">Eight</option>
                    <option value="3">Nine</option>
                    <option value="4">Ten</option>
                  </select>
                </div>
              </div>
          </div>
          <div class="col-md-3">
            <div class="form-group row">
              <label for="department" class="col-md-5 col-form-label">Department</label>
                <div class="col-md-7">
                  <select name="department" id="department" class="form-control department">
                    <option value="">Select</option>
                    <option value="0">Science</option>
                    <option value="1">Arts</option>
                    <option value="2">Commerce</option>
                  </select>
                </div>
              </div>
          </div>
          <div class="col-md-3">
            <div class="form-group row">
              <label for="section" class="col-md-4 col-form-label">Section</label>
                <div class="col-md-8">
                  <select name="section" id="section" class="form-control section">
                    <option value="">Select</option>
                    <option value="0">A</option>
                    <option value="1">B</option>
                    <option value="2">C</option>
                    <option value="3">D</option>
                  </select>
                </div>
            </div>
          </div>
      {{-- </form> --}}
    </div>
  </div>
<div class="container">
	<div class="row pt-md result">
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
        {{-- <p>Class:  <b>{{ $student ? config('class.reverse_class.'.$student->student_class) : '' }}</b>  Section:  <b>{{ $student ? config('section.reverse_section.'.$student->student_section) : '' }}</b></p> --}}
        <p style="color: #000000"><b>ID:</b> <b>{{ $student->currentStudentInfo ? $student->currentStudentInfo->student_id : ''}}</b></p>
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

$(document).ready(function(){
  studentSearch();
});

function studentSearch(){

    $('#name').keyup(function() {
      var name = $(this).val();
      var sclass = $('#class').val();
      var department = $('#department').val();
      var section = $('#section').val();
      getSearchStudent(sclass,name,department,section);
    });

    $('#class').change(function() {
      var sclass = $(this).val();
      var name = $('#name').val();
      var department = $('#department').val();
      var section = $('#section').val();
      getSearchStudent(sclass,name,department,section);
    });

    $('#department').change(function() {
      var department = $(this).val();
      var name = $('#name').val();
      var sclass = $('#class').val();
      var section = $('#section').val();
      getSearchStudent(sclass,name,department,section);
    });

    $('#section').change(function() {
      var section = $(this).val();
      var name = $("#name").val();
      var sclass = $('#class').val();
      var department = $('#department').val();
      getSearchStudent(sclass,name,department,section);
    });
  }

  function getSearchStudent(sclass,name,department,section) {
    //console.log(sclass,name,department,section);
    $.ajax({
      url:'{{ URL::to('/searchCurrentStudent') }}',
      type: "get",
      data: {
        'name':name,
        'sclass':sclass,
        'department':department,
        'section':section,
      },
      success: function(data) {
        console.log(data);
        if (typeof data !== 'undefined' && data.length > 0) {
          var result = '';
          $.each(data, function(index, value){
            result += '<div class="col-md-3 profile">';
            result += '<div class="img-box">';
            if (value ? value.student_image : '') {
              result += '<img src="/uploadfile/images/'+value.student_image+'" class="img-responsive img-style img-thumbnail">';
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
            if (value.current_student_info ? value.current_student_info.name : '') {
              result +='<h5>'+value.current_student_info.name+'</h5>';
            }else{
              result +='<h5></h5>';
            }
            if (value ? value.student_class : '' && value ? value.student_section : '') {
              result +='Class:  <b>'+value.sclass[value.student_class]+'</b> Section:  <b>'+value.section[value.student_section]+'</b></p>'
            }
            result +='<a href="" data-id="'+value.user_id+'" data-toggle="modal" data-target=".bd-example-modal-lg" class="currentstudent_show_modal">See Details</a>';
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
  } 
</script>
@endsection