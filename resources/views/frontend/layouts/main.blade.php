<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    {{-- <title>@yield('title') {{ config('app.name', 'Laravel') }}</title> --}}
    <title>KK High School</title>

    @include('frontend.partial.style')
    @yield('style')

    <style>
        .result-set { margin-top: 1em }
    </style>
    <script>
        window.Laravel = {!! json_encode([
            'csrfToken' => csrf_token(),
        ]) !!};
    </script>
</head>
<body>
    <div id="app">
        @if(Auth::check())
            @include('frontend.partial.authorize-navbar')
        @else
            @include('frontend.partial.index-navbar')
        @endif
            <div id="flash-msg">
                @include('flash::message')
            </div>
            @yield('content')    
    </div>
    @include('frontend.partial.footer')
    @include('frontend.partial.javascript')
    @yield('script')
</body>
</html>

