<!DOCTYPE html>
<html>
<head>
<style>
    tr:nth-child(even) {
        background-color: #dddddd;
    }
</style>
</head>
<body>

    <div style="width: 100%;max-width: 1024px;margin: 0 auto;">
        <div style="display: inline-block;">
            <h3 style="font-size: 36px;margin-bottom: 0.5rem;color: #09f;">{{ $notice->title }}</h3>
            <h5 style="font-family: arial, sans-serif;font-size: 22px;margin-top: 0;">{{ date('d-M-Y', strtotime($notice->created_at)) }}</h5>
        </div>
        <div style="width: 100%;max-width: 1024px;margin: 0 auto;">
            <img src="{{ asset('uploadfile/images/'. $notice->file) }}" alt="">
        </div>
    </div>
</body>
</html>
