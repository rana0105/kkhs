<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Backend\About;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Storage;
use Image;
use Intervention\Image\ImageManager;

class AboutController extends Controller
{
    
    public function index()
    {
        $abouts = About::all();
        return view('backend.about.index', compact('abouts'));
    }

    public function create()
    {
        return view('backend.about.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title'       => 'required',
            'description' => 'required',
            'file'        => 'required|image|min:3|max:2048'
        ]);
        $images = $request->file('file');

        $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
        $location = 'uploadfile/images/'. $filename;
        Image::make($images)->resize(780 , 300)->save($location);
        if($images){
            $about = new About;
            $about->title = $request->title;
            $about->description = $request->description;
            $about->file = $filename;
        }
        $about->save();
        return redirect()->route('about.index')->with('success', 'About us created successfully !');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $about = About::find($id);
        return view('backend.about.edit', compact('about'));
    }

    public function update(Request $request, $id)
    {
        $images = $request->file('file');
        $about = About::find($id);
        if($images != null){
            $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
            $location = 'uploadfile/images/'. $filename;
            Image::make($images)->resize(780 , 300)->save($location);
            $oldFilename = $about->file;
            $about->file = $filename;
            Storage::delete($oldFilename);
        }else{
            $about->title = $request->title;
            $about->description = $request->description;
        }
        $about->title = $request->title;
        $about->description = $request->description;
        $about->save();
        return redirect()->route('about.index')->with('success', 'About us upadated successfully !');
    }

    public function destroy($id)
    {
        $about = About::find($id)->delete();
        return redirect()->route('about.index')->with('danger', 'About us deleted successfully !');
    }

}
