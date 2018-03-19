@extends('frontend.layouts.main')
@section('content')
	<!-- banner -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
      </ol>
      <div class="carousel-inner">
        @if(sizeof($sliders)>0)
       @foreach($sliders as $key => $slider)
        <div class="carousel-item item{{ $key == 0 ? ' active' : '' }}">
          <img class="d-block w-100" src="{{ asset('uploadfile/images') }}/{{ $slider ? $slider->image : 'image.jpg' }}" alt="{{ $slider ? $slider->image : 'image.jpg' }}" alt="First slide">
          <div class="carousel-caption d-none d-md-block">
            <div class="carousel-text-style">
                <h5>{{ $slider ? $slider->title : '' }}</h5>
                <p>{!! $slider ? $slider->description : '' !!}</p>
            </div>
          </div>
        </div>
        @endforeach
        @else
        <div class="carousel-item active">
          <img class="d-block w-100" src="{{ asset('kkhs/frontend/best_study/images/1.jpg') }}" alt="First slide">
          <div class="carousel-caption d-none d-md-block">
            <h5>first</h5>
            <p>test</p>
          </div>
        </div>
        @endif
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
                   
    <!--//banner -->
    <!-- about -->
    <div class="banner-bottom-w3l" id="about">
        <div class="container">
            <div class="title-div">
                <h3 class="tittle">
                    <span>W</span>elcome
                </h3>
                <div class="tittle-style">

                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                      <div class="card-header">
                        Latest Notice
                      </div>
                      <div class="new-sound overflow-fix">
                        <ul class="porund">
                            @if(sizeof($notices)>0)
                            @foreach($notices as $key => $notice)
                            <li class="{{ $key == 0 ? ' active' : '' }}">
                                <div class="chronology-single-slider overflow-fix">
                                    <p><span><b>Title:</b> <a target="blank" href="{{ route('show.notices', $notice->id) }}">{{ str_limit($notice->title, 20) }}</a></span><span>  &nbsp; <b>Date: {{ date('d-M-Y', strtotime($notice->created_at)) }}</b></span></p>
                                </div>
                            </li>
                           @endforeach 
                           @endif
                        </ul>
                      </div>
                    </div>
                </div>
                <!-- Stats-->
                <div class="col-md-6 stats-info-agile">
                    <div class="col-xs-6 stats-grid stat-border">
                        <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='{{ App\Model\Backend\CurrentStudent::count() }}' data-delay='.5' data-increment="1">{{ App\Model\Backend\CurrentStudent::count() }}</div>
                        <p><b>Happy Students</b></p>
                    </div>
                    <div class="col-xs-6 stats-grid">
                        <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='{{ App\Model\Backend\ExStudent::count() }}' data-delay='.5' data-increment="1">{{ App\Model\Backend\ExStudent::count() }}</div>
                        <p><b>Ex Student</b></p>
                    </div>
                    <div class="clearfix"></div>
                    <div class="child-stat">
                        <div class="col-xs-6 stats-grid stat-border border-st2">
                            <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='{{ App\Model\Backend\Teacher::where('teacher_status', 1)->count() }}' data-delay='.5' data-increment="1">{{ App\Model\Backend\Teacher::where('teacher_status', 1)->count() }}</div>
                            <p><b>Certified Teachers</b></p>
                        </div>
                        <div class="col-xs-6 stats-grid">
                            <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='10' data-delay='.5' data-increment="1">10</div>
                            <p><b>Faculties</b></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- //Stats -->
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!-- //about -->
    <!-- services -->
    <div class="services">
        <div class="container">
            <div class="title-div">
                <h3 class="tittle">
                    <span>O</span>ur
                    <span>F</span>acilities 
                </h3>
                <div class="tittle-style">

                </div>
            </div>
            <div class="row services-moksrow">
                <div class="col-md-4 services-grids-w3l">
                    <div class="servi-shadow">
                        <span class="fa fa-bullhorn icon" aria-hidden="true"></span>
                        <h4>Popular Courses</h4>
                        <p>Phasellus at placerat ante nulla adipiscing elit</p>
                    </div>
                </div>
                <div class="col-md-4 services-grids-w3l">
                    <div class="servi-shadow">
                        <span class="fa fa-certificate icon" aria-hidden="true"></span>
                        <h4>Certification</h4>
                        <p>Phasellus at placerat ante nulla adipiscing elit</p>
                    </div>
                </div>
                <div class="col-md-4 services-grids-w3l">
                    <div class="servi-shadow">
                        <span class="fa fa-book icon" aria-hidden="true"></span>
                        <h4>Book Library</h4>
                        <p>Phasellus at placerat ante nulla adipiscing elit</p>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="row services-moksrow">
                <div class="col-md-4 services-grids-w3l">
                    <div class="servi-shadow">
                        <span class="fa fa-users icon" aria-hidden="true"></span>
                        <h4>Best Teachers</h4>
                        <p>Phasellus at placerat ante nulla adipiscing elit</p>
                    </div>
                </div>
                <div class="col-md-4 services-grids-w3l">
                    <div class="servi-shadow">
                        <span class="fa fa-bus icon" aria-hidden="true"></span>
                        <h4>Transport Facility</h4>
                        <p>Phasellus at placerat ante nulla adipiscing elit</p>
                    </div>
                </div>
                <div class="col-md-4 services-grids-w3l">
                    <div class="servi-shadow">
                        <span class="fa fa-laptop icon" aria-hidden="true"></span>
                        <h4>Excellent Lab</h4>
                        <p>Phasellus at placerat ante nulla adipiscing elit</p>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!-- //services -->
    <!-- news -->
    <div class="news" id="news">
        <div class="container">
            <div class="title-div">
                <h3 class="tittle">
                    <span>O</span>ur
                    <span> E</span>vents
                </h3>
                <div class="tittle-style">

                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-style">
                    <div class="row">
                        <div class="col-md-6">
                            <img class="img img-responsive profile-style-img" src="{{asset('uploadfile/images')}}/{{ $events[0]['image'] or 'event.jpg' }}" alt="">
                        </div>
                        <div class="col-md-6">
                            <div class="news-left-top-text text-color1">
                                <a href="#" data-toggle="modal" class="eventShow" data-id="{{ $events[0]['id'] or '' }}" data-target="#myModal">{{ $events[0]['title'] or '' }}</a>
                            </div>
                            <div class="date-grid">
                                <div class="admin">
                                    <a href="#">
                                        <span class="fa fa-clock-o" aria-hidden="true"></span> {{ $events[0]['time'] or '' }}</a>
                                </div>
                                <div class="time">
                                    <p>
                                        <span class="fa fa-map-marker" aria-hidden="true"></span> {{ $events[0]['location'] or '' }}</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="news-grid-info-bottom-w3ls-text">
                                <p>{!! $events[0]['description'] or '' !!}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-style">
                    <div class="row">
                        <div class="col-md-6">
                            <img class="img img-responsive profile-style-img" src="{{asset('uploadfile/images')}}/{{ $events[1]['image'] or 'event.jpg' }}" alt="">
                        </div>
                        <div class="col-md-6">
                            <div class="news-left-top-text text-color2">
                                <a href="#" data-toggle="modal" class="eventShow" data-id="{{ $events[1]['id'] or '' }}" data-target="#myModal">{{ $events[1]['title'] or '' }}</a>
                            </div>
                            <div class="date-grid">
                                <div class="admin">
                                    <a href="#">
                                        <span class="fa fa-clock-o" aria-hidden="true"></span> {{ $events[1]['time'] or '' }}</a>
                                </div>
                                <div class="time">
                                    <p>
                                        <span class="fa fa-map-marker" aria-hidden="true"></span> {{ $events[1]['location'] or '' }}</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="news-grid-info-bottom-w3ls-text">
                                <p>{!! $events[1]['description'] or '' !!}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-style">
                    <div class="row">
                        <div class="col-md-6">
                            <img class="img img-responsive profile-style-img" src="{{asset('uploadfile/images')}}/{{ $events[2]['image'] or 'event.jpg' }}" alt="">
                        </div>
                        <div class="col-md-6">
                            <div class="news-left-top-text text-color3">
                                <a href="#" data-toggle="modal" class="eventShow" data-id="{{ $events[2]['id'] or '' }}" data-target="#myModal">{{ $events[2]['title'] or '' }}</a>
                            </div>
                            <div class="date-grid">
                                <div class="admin">
                                    <a href="#">
                                        <span class="fa fa-clock-o" aria-hidden="true"></span> {{ $events[2]['time'] or '' }}</a>
                                </div>
                                <div class="time">
                                    <p>
                                        <span class="fa fa-map-marker" aria-hidden="true"></span> {{ $events[2]['location'] or '' }}</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="news-grid-info-bottom-w3ls-text">
                                <p>{!! $events[2]['description'] or '' !!}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-style">
                    <div class="row">
                        <div class="col-md-6">
                            <img class="img img-responsive profile-style-img" src="{{asset('uploadfile/images')}}/{{ $events[3]['image'] or 'event.jpg' }}" alt="">
                        </div>
                        <div class="col-md-6">
                            <div class="news-left-top-text text-color4">
                                <a href="#" data-toggle="modal" class="eventShow" data-id="{{ $events[3]['id'] or '' }}" data-target="#myModal">{{ $events[3]['title'] or '' }}</a>
                            </div>
                            <div class="date-grid">
                                <div class="admin">
                                    <a href="#">
                                        <span class="fa fa-clock-o" aria-hidden="true"></span> {{ $events[3]['time'] or '' }}</a>
                                </div>
                                <div class="time">
                                    <p>
                                        <span class="fa fa-map-marker" aria-hidden="true"></span> {{ $events[3]['location'] or '' }}</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="news-grid-info-bottom-w3ls-text">
                                <p>{!! $events[3]['description'] or '' !!}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- modal -->
    <div id="myModal" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content" style="text-align: center;">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="row event-show">
            
          </div>
            <div class="modal-footer">
          </div>
          </div>
          
        </div>
    </div>
    <!-- //modal -->
    <!-- //news -->
    <!-- middle section -->
    <div class="middle-sec-agile">
        <div class="container">
            <h4>Our
                <span>Best Study</span> Institute</h4>
            <ul>
                <li>
                    <div class="midle-left-w3l">
                        <span class="fa fa-check" aria-hidden="true"></span>
                    </div>
                    <div class="middle-right">
                        <h5>Select A Course You Like And Explore It!</h5>
                        <p>Integer eu facilisis nunc, a iaculis felis.</p>
                    </div>
                    <div class="clearfix"></div>
                </li>
                <li>
                    <div class="midle-left-w3l">
                        <span class="fa fa-check" aria-hidden="true"></span>
                    </div>
                    <div class="middle-right">
                        <h5>Join A Seminar To Know More About It!</h5>
                        <p>Integer eu facilisis nunc, a iaculis felis.</p>
                    </div>
                    <div class="clearfix"></div>
                </li>
                <li>
                    <div class="midle-left-w3l">
                        <span class="fa fa-check" aria-hidden="true"></span>
                    </div>
                    <div class="middle-right">
                        <h5>Get Enrolled And Start Better Future With Us!</h5>
                        <p>Integer eu facilisis nunc, a iaculis felis.</p>
                    </div>
                    <div class="clearfix"></div>
                </li>
            </ul>
            <a class="button-style" href="join.html">Join Now</a>
        </div>
        <div class="pencil-img">
            <img src="{{ asset('kkhs/frontend/best_study/images/bg5.png') }}" alt="" />
        </div>
    </div>
    <!-- //middle section -->
    <!-- testimonials -->
    <div class="testimonials">
        <div class="container">
            <div class="title-div">
                <h3 class="tittle">
                    <span>O</span>ur
                    <span>S</span>tudent's
                    <span>S</span>ay
                </h3>
                <div class="tittle-style">

                </div>
            </div>
            <ul id="flexiselDemo1">
                @foreach($testmonials as $testmonial)
                <li>
                    <div class="three_testimonials_grid_main row">
                        <div class="col-md-3 three_testimonials_grid_pos">
                            <div class="testmonial grid-test-allah-agile">
                                @if($testmonial->testmonialUser->studentStatus->student_status == 2)
                                <img src="{{ asset('uploadfile/images') }}/{{ $testmonial->testmonialUser->exStudent ? $testmonial->testmonialUser->exStudent->ex_student_image : 'image.jpg' }}" alt="{{ $testmonial->testmonialUser->exStudent ? $testmonial->testmonialUser->exStudent->ex_student_image : 'image.jpg' }}" class="img-responsive" width="150" height="165">
                                @elseif($testmonial->testmonialUser->studentStatus->student_status == 1)
                                <img src="{{ asset('uploadfile/images') }}/{{ $testmonial->testmonialUser->currentStudent ? $testmonial->testmonialUser->currentStudent->student_image : 'image.jpg' }}" alt="{{ $testmonial->testmonialUser->currentStudent ? $testmonial->testmonialUser->currentStudent->student_image : 'image.jpg' }}" class="img-responsive" width="150" height="165">
                                @else
                                <img src="{{ asset('uploadfile/images/image.jpg') }}" class="img-responsive" width="150" height="165">
                                @endif
                                <div class="three_testimonials_grid1">
                                    <h5>{{ $testmonial->testmonialUser ?  $testmonial->testmonialUser->name : ''}}</h5>
                                    <p>
                                        @if($testmonial->testmonialUser->studentStatus->student_status == 2)
                                        Ex Student
                                        @elseif($testmonial->testmonialUser->studentStatus->student_status == 1)
                                        Current Student
                                        @else
                                        N/A
                                        @endif
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9 three_testimonials_grid">
                            <p>
                                {!! $testmonial->description or '' !!}
                            </p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </li>
                @endforeach
            </ul>
        </div>
    </div>
    <!-- //testimonials -->
@endsection
@section('script')
<script type="text/javascript"> 
$(document).on('click', '.eventShow', function() {
     var id = $(this).attr('data-id');
       $.get('/eventShow/'+id, function(data){
       $('#myModal').find('.event-show').first().html(data);
    });
});
</script>
@endsection