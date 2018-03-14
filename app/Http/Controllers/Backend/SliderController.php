<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Backend\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Image;
use Intervention\Image\ImageManager;
use Storage;

class SliderController extends Controller
{
    
    public function index()
    {
        $sliders = Slider::orderBy('id', 'desc')->get();
        return view('backend.slider.index', compact('sliders'));
    }

    public function create()
    {
        return view('backend.slider.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'description' => 'required',
            'image' => 'required|image|max:2048'
        ]);
        $images = $request->file('image');

        $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
        $location = 'uploadfile/images/'. $filename;
        Image::make($images)->resize(1680 , 800)->save($location);
        if($images){
            $slider = new Slider;
            $slider->title = $request->title;
            $slider->description = $request->description;
            $slider->image = $filename;
        }
        $slider->save();
        return redirect()->route('slider.index')->with('success', 'Slider picture created successfully !');
    }

    public function edit($id)
    {
        $slider = Slider::find($id);
        return view('backend.slider.edit', compact('slider'));
    }

    public function update(Request $request, $id)
    {
        $images = $request->file('image');
        $slider = Slider::find($id);
        if($images != null){
            $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
            $location = 'uploadfile/images/'. $filename;
            Image::make($images)->resize(1680 , 800)->save($location);
            $oldFilename = $slider->image;
            $slider->image = $filename;
            Storage::delete($oldFilename);
        }else{
            $slider->title = $request->title;
            $slider->description = $request->description;
        }
        $slider->title = $request->title;
        $slider->description = $request->description;
        $slider->save();
        return redirect()->route('slider.index')->with('success', 'Slider Image upadated successfully !');
    }

    public function destroy($id)
    {
        $slider = Slider::find($id)->delete();
        return redirect()->route('galleries.index')->with('danger', 'Slider Image deleted successfully !');
    }
}
