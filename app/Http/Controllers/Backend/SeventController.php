<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Backend\Sevent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Image;
use Intervention\Image\ImageManager;
use Storage;

class SeventController extends Controller
{
    
    public function index()
    {
        $events = Sevent::orderBy('id', 'desc')->get();
        return view('backend.event.index', compact('events'));
    }

    public function create()
    {
        return view('backend.event.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'date' => 'required',
            'time' => 'required',
            'location' => 'required',
            'description' => 'required',
            'image' => 'required|image|max:2048'
        ]);
        $images = $request->file('image');

        $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
        $location = 'uploadfile/images/'. $filename;
        Image::make($images)->resize(600 , 600)->save($location);
        if($images){
            $event = new Sevent;
            $event->title = $request->title;
            $event->date = $request->date;
            $event->time = $request->time;
            $event->location = $request->location;
            $event->description = $request->description;
            $event->image = $filename;
        }
        $event->save();
        return redirect()->route('event.index')->with('success', 'Event created successfully !');
    }

    public function edit($id)
    {
        $event = Sevent::find($id);
        return view('backend.event.edit', compact('event'));
    }

    public function update(Request $request, $id)
    {
        $images = $request->file('image');
        $event = Sevent::find($id);
        if($images != null){
            $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
            $location = 'uploadfile/images/'. $filename;
            Image::make($images)->resize(600 , 600)->save($location);
            $oldFilename = $event->image;
            $event->image = $filename;
            Storage::delete($oldFilename);
        }else{
            $event->title = $request->title;
            $event->date = $request->date;
            $event->time = $request->time;
            $event->location = $request->location;
            $event->description = $request->description;
        }
        $event->title = $request->title;
        $event->date = $request->date;
        $event->time = $request->time;
        $event->location = $request->location;
        $event->description = $request->description;
        $event->save();
        return redirect()->route('event.index')->with('success', 'Event upadated successfully !');
    }

    public function destroy($id)
    {
        $event = Sevent::find($id)->delete();
        return redirect()->route('event.index')->with('danger', 'Event deleted successfully !');
    }
}
