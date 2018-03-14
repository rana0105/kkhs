  <div class="header-top">
    <div class="container">
      <div class="bottom_header_left">
          <img class="img img-responsive" src="{{ asset('kkhs/frontend/logo/kkhs.png') }}" alt="" width="200" height="90">
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
          <a class="topbar-login" href="{{url('login')}}">
            <span class="fa fa-sign-in" aria-hidden="true"></span>Login
          </a>
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