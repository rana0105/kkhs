<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Backend\Blogcategory;
use Illuminate\Http\Request;

class BlogCategoryController extends Controller
{
    
    public function index()
    {
        $blogcats = Blogcategory::all();
        return view('backend.blogcategory.index', compact('blogcats'));
    }

    public function create()
    {
        return view('backend.blogcategory.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required'
        ]);
        $blogcat = new Blogcategory;
        $blogcat->name = $request->name;
        $blogcat->save();
        return redirect()->route('blog-category.index')->with('success', 'Data have successfully created');
    }

    public function edit($id)
    {
        $blogcat = Blogcategory::find($id);
        return view('backend.blogcategory.edit', compact('blogcat'));
    }

    public function update(Request $request, $id)
    {
        $blogcat = Blogcategory::find($id);
        $blogcat->name = $request->name;
        $blogcat->save();
        return redirect()->route('blog-category.index')->with('success', 'Data have successfully updated');
    }

    public function destroy($id)
    {
        $blogcat = Blogcategory::find($id)->delete();
        return redirect()->route('blog-category.index')->with('success', 'Data have successfully deleted');
    }
}
