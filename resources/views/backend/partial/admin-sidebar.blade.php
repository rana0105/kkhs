
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="{{ url('dashboard') }}"><img src="{{ asset('kkhs/backend/images/logo1.png')}}" alt="Logo"></a>
                <a class="navbar-brand hidden" href="{{ url('dashboard') }}"><img src="{{ asset('kkhs/backend/images/logo1.png')}}" alt="Logo"></a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="{{url('/dashboard')}}"> <i class="menu-icon fa fa-dashboard"></i>Dashboard </a>
                    </li>
                    <h3 class="menu-title">UI elements</h3><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Component</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-home"></i><a href="{{route('about.index')}}">About Us</a></li>
                            <li><i class="fa fa-trophy"></i><a href="{{route('achieve.index')}}">Achieve</a></li>
                            <li><i class="fa fa-user"></i><a href="{{route('current-teacher.index')}}">Current Teacher</a></li>
                            <li><i class="fa fa-user"></i><a href="{{route('ex-teacher.index')}}">Ex Teacher</a></li>
                            <li><i class="fa fa-user"></i><a href="{{route('current-student.index')}}">Current Student</a></li>
                            <li><i class="fa fa-user"></i><a href="{{route('ex-student.index')}}">Ex Student</a></li>
                            <li><i class="fa fa-image"></i><a href="{{route('galleries.index')}}">Gallery</a></li>
                            <li><i class="fa fa-image"></i><a href="{{route('slider.index')}}">Slider</a></li>
                            <li><i class="fa fa-envelope"></i><a href="{{route('notices.index')}}">Notice</a></li>
                            <li><i class="fa fa-envelope"></i><a href="{{route('event.index')}}">Event</a></li>
                            <li><i class="fa fa-cog"></i><a href="{{route('blog-category.index')}}">Blog Category</a></li>
                            <li><i class="fa fa-rss"></i><a href="{{route('blogs.index')}}">Blog</a></li>
                            <li><i class="fa fa-comments"></i><a href="{{route('testmonials.index')}}">Testmonial</a></li>
                        </ul>
                    </li>

                    <h3 class="menu-title">Admin Interface</h3><!-- /.menu-title -->

                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-tasks"></i>Setting</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-users"></i><a href="{{route('users.index')}}">Users</a></li>
                            <li><i class="menu-icon fa fa-users"></i><a href="{{route('teachers.index')}}">Teachers</a></li>
                            <li><i class="menu-icon fa fa-users"></i><a href="{{route('students.index')}}">Students</a></li>
                            <li><i class="menu-icon fa fa-users"></i><a href="{{route('roles.index')}}">Roles</a></li>
                            <li><i class="menu-icon fa fa-users"></i><a href="{{route('permissions.index')}}">Permission</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->

    <!-- Left Panel