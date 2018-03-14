<div class="col-md-4 text-center modal-text">
		<div class="">
			<img class="img img-thumbnail ima-responsive" src="{{ asset('uploadfile/images') }}/{{ $currentStudent ? $currentStudent->student_image : 'image.jpg' }}" alt="" />
		</div>
    <h5>{{ $currentStudent->currentStudentInfo ? $currentStudent->currentStudentInfo->name : ''}}</h5>
    <p>Class:  <b>{{ $currentStudent ? config('class.reverse_class.'.$currentStudent->student_class) : '' }}</b>  Section:  <b>{{ $currentStudent ? config('section.reverse_section.'.$currentStudent->student_section) : '' }}</b></p>
</div>
<div class="col-md-8">
	<div class="row">
		<div class="col-4 text-right"><b>Name</b></div>
		<div class="col-8 text-left">{{ $currentStudent->currentStudentInfo ? $currentStudent->currentStudentInfo->name : ''}}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Class</b></div>
		<div class="col-8 text-left"><b>{{ $currentStudent ? config('class.reverse_class.'.$currentStudent->student_class) : '' }}</b></div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Section</b></div>
		<div class="col-8 text-left"><b>{{ $currentStudent ? config('section.reverse_section.'.$currentStudent->student_section) : '' }}</b></div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Department</b></div>
		<div class="col-8 text-left"><b>{{ $currentStudent ? config('department.reverse_department.'.$currentStudent->student_department) : '' }}</b></div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Email</b></div>
		<div class="col-8 text-left">{{ $currentStudent->currentStudentInfo ? $currentStudent->currentStudentInfo->email : ''}}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Phone</b></div>
		<div class="col-8 text-left">{{ $currentStudent ? $currentStudent->student_phone : '' }}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Father's Name</b></div>
		<div class="col-8 text-left">{{ $currentStudent ? $currentStudent->student_father_name : '' }}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Mother's Name</b></div>
		<div class="col-8 text-left">{{ $currentStudent ? $currentStudent->student_mother_name : '' }}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Parent's Phone</b></div>
		<div class="col-8 text-left">{{ $currentStudent ? $currentStudent->student_parent_phone : '' }}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Address</b></div>
		<div class="col-8 text-left">{{ $currentStudent ? $currentStudent->student_address : '' }}</div>
	</div>
</div>
