<div class="header-top">
  <div class="container">
    <div class="bottom_header_left">
        <img class="img img-responsive" src="{{ asset('kkhs/frontend/logo/kkhs.png') }}" alt="" width="250" height="90">
    </div>
    <div class="bottom_header_right">
      <div class="bottom-social-icons">
        <a class="facebook" href="#">
          <span class="fa fa-facebook"></span>
        </a>
        <a class="twitter" href="#">
          <span class="fa fa-twitter"></span>
        </a>
        <a class="linkedin" href="#">
          <span class="fa fa-linkedin"></span>
        </a>
      </div>
      <div class="header-top-righ">
        <?php $userRole = Auth::user()->role_id; ?>
        <?php $checkStatus = Auth::user()->load('studentStatus'); ?>
        <?php $exprofile = Auth::user()->load('exStudent'); ?>
        <?php $currentprofile = Auth::user()->load('currentStudent'); ?>
        <?php $checkTeacher = Auth::user()->load('teacherInfo'); ?>
        <a class="topbar dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          @if($userRole == 2)
          @if($checkTeacher->teacherInfo->teacher_image != null)
          <img src="{{ asset('uploadfile/images') }}/{{ $checkTeacher->teacherInfo ? $checkTeacher->teacherInfo->teacher_image : 'image.jpg'}}" alt="{{ $checkTeacher->teacherInfo ? $checkTeacher->teacherInfo->teacher_image : 'image.jpg' }}"  class="img img-responsive rounded-circle" alt="" width="40" height="40">
          @else
          <img src="{{ asset('uploadfile/images/image.jpg') }}"  class="img img-responsive rounded-circle" alt="" width="40" height="40">
          @endif
          @elseif($userRole == 3)
            @if($checkStatus->studentStatus->student_status == 2)
              <img src="{{ asset('uploadfile/images') }}/{{ $exprofile->exStudent ? $exprofile->exStudent->ex_student_image : 'image.jpg'}}" alt="{{ $exprofile->exStudent ? $exprofile->exStudent->ex_student_image : 'image.jpg' }}"  class="img img-responsive rounded-circle" alt="" width="40" height="40">
            @elseif($checkStatus->studentStatus->student_status == 1)
              <img src="{{ asset('uploadfile/images') }}/{{ $currentprofile->currentStudent ? $currentprofile->currentStudent->student_image : 'image.jpg'}}" alt="{{ $currentprofile->currentStudent ? $currentprofile->currentStudent->student_image : 'image.jpg' }}" class="img img-responsive rounded-circle" alt="" width="40" height="40">
            @else
              <img src="{{ asset('uploadfile/images/image.jpg') }}" class="img img-responsive rounded-circle" alt="" width="40" height="40">
            @endif
          @elseif($userRole == 4)
          <p>Parents</p>
          @else
          <p>Admin</p>
          @endif
        </a>
        <div class="dropshow dropdown-menu dropdown-menu-style" aria-labelledby="navbarDropdown">
          @if($userRole == 2)
            @if($checkTeacher->teacherInfo->teacher_status == 1)
            <a class="dropdown-item" href="{{ route('current.teacher.single.profile') }}">Profile</a>
              <a class="dropdown-item" href="{{ route('current.teacher.profile.setting') }}">Profile Setting</a>
              <a class="dropdown-item" href="{{ route('blog.post') }}">Blog Post</a>
              <a class="dropdown-item" href="{{ route('logout') }}"
              onclick="event.preventDefault();
                     document.getElementById('logout-form').submit();">
              <i class="fa fa-power-off"></i></i> Logout</a>
            @elseif($checkTeacher->teacherInfo->teacher_status == 2)
            <a class="dropdown-item" href="{{ route('ex.teacher.single.profile') }}">Profile</a>
              <a class="dropdown-item" href="{{ route('ex.teacher.profile.setting') }}">Profile Setting</a>
              <a class="dropdown-item" href="{{ route('blog.post') }}">Blog Post</a>
              <a class="dropdown-item" href="{{ route('logout') }}"
              onclick="event.preventDefault();
                     document.getElementById('logout-form').submit();">
              <i class="fa fa-power-off"></i></i> Logout</a>
              @else
              <a class="dropdown-item" href="{{ route('teacher.status') }}">Teacher Status</a>
              <a class="dropdown-item" href="{{ route('logout') }}"
              onclick="event.preventDefault();
                     document.getElementById('logout-form').submit();">
              <i class="fa fa-power-off"></i></i> Logout</a>
              @endif
          @elseif($userRole == 3)
            @if($checkStatus->studentStatus->student_status == 2)
              <a class="dropdown-item" href="{{ route('ex.student.single.profile') }}">Profile</a>
              <a class="dropdown-item" href="{{ route('ex.student.profile.setting') }}">Profile Setting</a>
              <a class="dropdown-item" href="{{ route('blog.post') }}">Blog Post</a>
              <a class="dropdown-item" href="{{ route('testmonial.post') }}">Testmonial</a>
              <a class="dropdown-item" href="{{ route('logout') }}"
              onclick="event.preventDefault();
                     document.getElementById('logout-form').submit();">
              <i class="fa fa-power-off"></i></i> Logout</a>
            @elseif($checkStatus->studentStatus->student_status == 1)
              <a class="dropdown-item" href="{{ route('current.student.single.profile') }}">Profile</a>
              <a class="dropdown-item" href="{{ route('current.student.profile.setting') }}">Profile Setting</a>
              <a class="dropdown-item" href="{{ route('blog.post') }}">Blog Post</a>
              <a class="dropdown-item" href="{{ route('testmonial.post') }}">Testmonial</a>
              <a class="dropdown-item" href="{{ route('logout') }}"
              onclick="event.preventDefault();
                     document.getElementById('logout-form').submit();">
              <i class="fa fa-power-off"></i></i> Logout</a>
            @else
              <a class="dropdown-item" href="{{ route('student.status') }}">Student Status</a>
              <a class="dropdown-item" href="{{ route('logout') }}"
              onclick="event.preventDefault();
                     document.getElementById('logout-form').submit();">
              <i class="fa fa-power-off"></i></i> Logout</a>
            @endif
          @elseif($userRole == 4)
            <p>Parents</p>
            <a class="dropdown-item" href="{{ route('logout') }}"
              onclick="event.preventDefault();
                     document.getElementById('logout-form').submit();">
              <i class="fa fa-power-off"></i></i> Logout</a>
          @else
            <p>admin</p>
            <a class="dropdown-item" href="{{ route('logout') }}"
              onclick="event.preventDefault();
                     document.getElementById('logout-form').submit();">
              <i class="fa fa-power-off"></i></i> Logout</a>
          @endif
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
              {{ csrf_field() }}
            </form>
        </div>
      </div>
      <div class="clearfix"> </div>
    </div>
    <div class="clearfix"> </div>
  </div>
</div>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
    <a class="navbar-brand" href="{{url('/')}}">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="{{url('/')}}">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{ route('about-us') }}">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{ route('teacher.show') }}">Teachers</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Student
          </a>
          <div class="navdropmenu dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="{{ route('current.student') }}">Current Student</a>
            <a class="dropdown-item" href="{{ route('ex.student') }}">Ex Student</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{ route('gallery') }}">Gallery</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{ route('blog') }}">Blog</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{ route('contact') }}">Contact</a>
        </li>
      </ul>
    </div>
  </div>
</nav>