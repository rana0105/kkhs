<div class="col-md-4 text-center modal-text">
		<div class="">
			<img class="img img-thumbnail ima-responsive" src="{{ asset('uploadfile/images') }}/{{ $exStudent ? $exStudent->ex_student_image : 'image.jpg' }}" alt="" />
		</div>
    <h5>{{ $exStudent->exStudentInfo ? $exStudent->exStudentInfo->name : ''}}</h5>
    <p><b>{{ $exStudent ? $exStudent->ex_student_designation : '' }}</b></p>
</div>
<div class="col-md-8">
	<div class="row">
		<div class="col-4 text-right"><b>ID</b></div>
		<div class="col-8 text-left"><b>{{ $exStudent->exStudentInfo ? $exStudent->exStudentInfo->student_id : ''}}</b></div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Name</b></div>
		<div class="col-8 text-left">{{ $exStudent->exStudentInfo ? $exStudent->exStudentInfo->name : ''}}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Email</b></div>
		<div class="col-8 text-left">{{ $exStudent->exStudentInfo ? $exStudent->exStudentInfo->email : ''}}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Phone</b></div>
		<div class="col-8 text-left">{{ $exStudent ? $exStudent->ex_student_phone : '' }}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Education</b></div>
		<div class="col-8 text-left">{{ $exStudent ? $exStudent->ex_student_education : '' }}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Institute</b></div>
		<div class="col-8 text-left">{{ $exStudent ? $exStudent->ex_student_education_institution : '' }}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Profession</b></div>
		<div class="col-8 text-left">{{ $exStudent ? $exStudent->ex_student_profession : '' }}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Designation</b></div>
		<div class="col-8 text-left">{{ $exStudent ? $exStudent->ex_student_designation : '' }}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Organization</b></div>
		<div class="col-8 text-left">{{ $exStudent ? $exStudent->ex_student_profession_institute : '' }}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Address</b></div>
		<div class="col-8 text-left">{{ $exStudent ? $exStudent->ex_student_address : '' }}</div>
	</div>
	<div class="row">
		<div class="col-4 text-right"><b>Passing Year(SSC)</b></div>
		<div class="col-8 text-left">{{ date('Y', strtotime($exStudent ? $exStudent->ex_student_passing_year : '')) }}</div>
	</div>
</div>
