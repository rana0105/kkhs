@extends('backend.layouts.dashboard')
@section('content')
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Dashboard</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">Dashboard</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="content mt-3">
    <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-flat-color-1">
            <div class="card-body pb-0">
                <div class="dropdown float-right">
                </div>
                <h4 class="mb-0">
                    <span class="count">{{ App\Model\Backend\CurrentStudent::count() }}</span>
                </h4>
                <p class="text-light">Current Student</p>

                <div class="chart-wrapper px-0" style="height:70px;" height="70"/>
                    <canvas id="widgetChart1"></canvas>
                </div>

            </div>

        </div>
    </div>
    <!--/.col-->

    <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-flat-color-4">
            <div class="card-body pb-0">
                <div class="dropdown float-right">
                </div>
                <h4 class="mb-0">
                    <span class="count">{{ App\Model\Backend\ExStudent::count() }}</span>
                </h4>
                <p class="text-light">Ex Student</p>

                <div class="chart-wrapper px-0" style="height:70px;" height="70"/>
                    <canvas id="widgetChart2"></canvas>
                </div>

            </div>
        </div>
    </div>
    <!--/.col-->

    <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-flat-color-1">
            <div class="card-body pb-0">
                <div class="dropdown float-right">
                </div>
                <h4 class="mb-0">
                    <span class="count">{{ App\Model\Backend\Teacher::where('teacher_status', 1)->count() }}</span>
                </h4>
                <p class="text-light">Current Teacher</p>

            </div>

                <div class="chart-wrapper px-0" style="height:70px;" height="70"/>
                    <canvas id="widgetChart3"></canvas>
                </div>
        </div>
    </div>
    <!--/.col-->

    <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-flat-color-4">
            <div class="card-body pb-0">
                <div class="dropdown float-right">
                </div>
                <h4 class="mb-0">
                    <span class="count">{{ App\Model\Backend\Teacher::where('teacher_status', 2)->count() }}</span>
                </h4>
                <p class="text-light">Ex Teacher</p>

                <div class="chart-wrapper px-3" style="height:70px;" height="70"/>
                    <canvas id="widgetChart4"></canvas>
                </div>

            </div>
        </div>
    </div>
    <!--/.col-->

    <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-flat-color-3">
            <div class="card-body pb-0">
                <div class="dropdown float-right">
                </div>
                <h4 class="mb-0">
                    <span class="count">{{ App\User::where('role_id', 3)->where('stage', 0)->count() }}</span>
                </h4>
                <p class="text-light">Pending Student</p>

                <div class="chart-wrapper px-0" style="height:70px;" height="70"/>
                    <canvas id="widgetChart1"></canvas>
                </div>

            </div>

        </div>
    </div>
    <!--/.col-->

    <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-flat-color-2">
            <div class="card-body pb-0">
                <div class="dropdown float-right">
                </div>
                <h4 class="mb-0">
                    <span class="count">{{ App\User::where('role_id', 2)->where('stage', 0)->count() }}</span>
                </h4>
                <p class="text-light">Pending Teacher</p>

                <div class="chart-wrapper px-0" style="height:70px;" height="70"/>
                    <canvas id="widgetChart2"></canvas>
                </div>

            </div>
        </div>
    </div>
    <!--/.col-->

    <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-flat-color-3">
            <div class="card-body pb-0">
                <div class="dropdown float-right">
                </div>
                <h4 class="mb-0">
                    <span class="count">{{ App\User::where('role_id', 4)->where('stage', 0)->count() }}</span>
                </h4>
                <p class="text-light">Pending Parents</p>

            </div>

                <div class="chart-wrapper px-0" style="height:70px;" height="70"/>
                    <canvas id="widgetChart3"></canvas>
                </div>
        </div>
    </div>
    <!--/.col-->

    <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-flat-color-2">
            <div class="card-body pb-0">
                <div class="dropdown float-right">
                </div>
                <h4 class="mb-0">
                    <span class="count">{{ App\Model\Backend\Teacher::where('teacher_status', 2)->count() }}</span>
                </h4>
                <p class="text-light">Ex Teacher</p>

                <div class="chart-wrapper px-3" style="height:70px;" height="70"/>
                    <canvas id="widgetChart4"></canvas>
                </div>

            </div>
        </div>
    </div>
    <!--/.col-->

    <div class="col-lg-3 col-md-6">
        <div class="social-box facebook">
            <i class="fa fa-facebook"></i>
            <ul>
                <li>
                    <sctrong><span class="count">40</span> k</strong>
                    <span>friends</span>
                </li>
                <li>
                    <sctrong><span class="count">450</span></strong>
                    <span>feeds</span>
                </li>
            </ul>
        </div>
        <!--/social-box-->
    </div><!--/.col-->


    <div class="col-lg-3 col-md-6">
        <div class="social-box twitter">
            <i class="fa fa-twitter"></i>
            <ul>
                <li>
                    <sctrong><span class="count">30</span> k</strong>
                    <span>friends</span>
                </li>
                <li>
                    <sctrong><span class="count">450</span></strong>
                    <span>tweets</span>
                </li>
            </ul>
        </div>
        <!--/social-box-->
    </div><!--/.col-->


    <div class="col-lg-3 col-md-6">
        <div class="social-box linkedin">
            <i class="fa fa-linkedin"></i>
            <ul>
                <li>
                    <sctrong><span class="count">40</span> +</strong>
                    <span>contacts</span>
                </li>
                <li>
                    <sctrong><span class="count">250</span></strong>
                    <span>feeds</span>
                </li>
            </ul>
        </div>
        <!--/social-box-->
    </div><!--/.col-->


    <div class="col-lg-3 col-md-6">
        <div class="social-box google-plus">
            <i class="fa fa-google-plus"></i>
            <ul>
                <li>
                    <sctrong><span class="count">94</span> k</strong>
                    <span>followers</span>
                </li>
                <li>
                    <sctrong><span class="count">92</span></strong>
                    <span>circles</span>
                </li>
            </ul>
        </div>
        <!--/social-box-->
    </div><!--/.col-->
</div>
@endsection