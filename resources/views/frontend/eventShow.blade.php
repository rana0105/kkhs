<div class="col-md-4">
    <div class="events-image">
        <img class="img img-responsive img-thumbnail" src="{{asset('uploadfile/images')}}/{{ $event->image }}" width="100%;" alt="" />
       <p><b>{{ $event->title }}</b><p>
        <p>{{ $event->time }}</p>
        <p>{{ $event->location }}</p>
    </div>
</div>
<div class="col-md-8">
    <p style="text-align: justify; margin: 0 10% 0 10%;">{!! $event->description !!}</p>
</div>