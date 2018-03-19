<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Backend\Gallery;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Image;
use Intervention\Image\ImageManager;
use Storage;

class GalleryController extends Controller
{
    public function index()
    {
        $galleries = Gallery::all();
        return view('backend.gallery.index', compact('galleries'));
    }

    public function create()
    {
        return view('backend.gallery.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title'       => 'required',
            'description' => 'required',
            'image'        => 'required|image|min:3|max:2048'
        ]);
        $images = $request->file('image');
        $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
        $location = 'uploadfile/images/'. $filename;
        Image::make($images)->resize(600 , 600)->save($location);
        if($images){
            $gallery = new Gallery;
            $gallery->title = $request->title;
            $gallery->description = $request->description;
            $gallery->image = $filename;
        }
        $gallery->save();
        return redirect()->route('galleries.index')->with('success', 'Gallery picture created successfully !');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $gallery = Gallery::find($id);
        return view('backend.gallery.edit', compact('gallery'));
    }

    public function update(Request $request, $id)
    {
        $images = $request->file('image');
        $gallery = Gallery::find($id);
        if($images != null){
            $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
            $location = 'uploadfile/images/'. $filename;
            Image::make($images)->resize(600 , 600)->save($location);
            $oldFilename = $gallery->image;
            $gallery->image = $filename;
            Storage::delete($oldFilename);
        }else{
            $gallery->title = $request->title;
            $gallery->description = $request->description;
        }
        $gallery->title = $request->title;
        $gallery->description = $request->description;
        $gallery->save();
        return redirect()->route('galleries.index')->with('success', 'Gallery Image upadated successfully !');
    }

    public function destroy($id)
    {
        $gallery = Gallery::find($id)->delete();
        return redirect()->route('galleries.index')->with('danger', 'Gallery Image deleted successfully !');
    }
}
