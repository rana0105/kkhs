<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Backend\Blog;
use App\Model\Backend\Blogcategory;
use Illuminate\Http\Request;
use Auth;
use Image;
use Intervention\Image\ImageManager;
use Storage;

class BlogController extends Controller
{
    public function index()
    {
        $blogs = Blog::all();
        return view('backend.blog.index', compact('blogs'));
    }

    public function create()
    {
        $blogCat = Blogcategory::all();
        return view('backend.blog.create', compact('blogCat'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'blogcategories_id' => 'required',
            'title'             => 'required',
            'description'       => 'required',
            'image'             => 'required|image|min:3|max:2048'
        ]);
        $images = $request->file('image');
        $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
        $location = 'uploadfile/images/'. $filename;
        Image::make($images)->resize(900 , 300)->save($location);
        if($images){
            $blog = new Blog;
            $blog->user_id           = Auth::user()->id;
            $blog->blogcategories_id = $request->blogcategories_id;
            $blog->title             = $request->title;
            $blog->description       = $request->description;
            $blog->image             = $filename;
            $blog->status            = 0;
        }
        $blog->save();
        return redirect()->route('blogs.index')->with('success', 'Blog picture created successfully !');
    }

    public function edit($id)
    {
        $blog = Blog::find($id);
        $category = Blogcategory::all();
        $cate     = array();
        foreach ($category as $key => $value) {
            $cate[$value->id] = $value->name;
        }
        return view('backend.blog.edit', compact('blog', 'cate'));
    }

    public function update(Request $request, $id)
    {
        $images = $request->file('image');
        $blog = Blog::find($id);
        if($images != null){
            $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
            $location = 'uploadfile/images/'. $filename;
            Image::make($images)->resize(900 , 300)->save($location);
            $oldFilename = $blog->image;
            $blog->image = $filename;
            Storage::delete($oldFilename);
        }else{
            $blog->blogcategories_id = $request->blogcategories_id;
            $blog->title = $request->title;
            $blog->description = $request->description;
            if(Auth::user()->role_id == 1){
                if($request->status != null){
                    $blog->status = $request->status;
                }else{
                    $blog->status = 0;
                }
            }else{
                $blog->status = 0;
            }
        }
        $blog->blogcategories_id = $request->blogcategories_id;
        $blog->title = $request->title;
        $blog->description = $request->description;
        if(Auth::user()->role_id == 1){
            if($request->status != null){
                $blog->status = $request->status;
            }else{
                $blog->status = 0;
            }
        }else{
            $blog->status = 0;
        }
        $blog->save();
        return redirect()->route('blogs.index')->with('success', 'Blog Image upadated successfully !');
    }

    public function destroy($id)
    {
        $blog = Blog::find($id)->delete();
        return redirect()->route('blogs.index')->with('danger', 'Blog Image deleted successfully !');
    }

    public function getBlog()
    {
        $blogs = Blog::orderBy('id', 'desc')->with('blogPostUser')->where('status', 1)->paginate(5);
        $category = Blogcategory::all();
        return view('frontend.pages.blog-home', compact('blogs', 'category'));
    }

    public function getBlogShow($id)
    {
        $category = Blogcategory::all();
        $blog = Blog::find($id);
        return view('frontend.pages.blog-show', compact('blog', 'category'));
    }

    public function getBlogPost()
    {
        $blogCat = Blogcategory::all();
        return view('frontend.pages.blogPost', compact('blogCat'));
    }

    public function postBlogStore(Request $request)
    {
        $this->validate($request, [
            'blogcategories_id' => 'required',
            'title'             => 'required',
            'description'       => 'required',
            'image'             => 'required|image|min:3|max:2048'
        ]);
        $images = $request->file('image');
        $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
        $location = 'uploadfile/images/'. $filename;
        Image::make($images)->resize(900 , 300)->save($location);
        if($images){
            $blog = new Blog;
            $blog->user_id           = Auth::user()->id;
            $blog->blogcategories_id = $request->blogcategories_id;
            $blog->title             = $request->title;
            $blog->description       = $request->description;
            $blog->image             = $filename;
            $blog->status            = 0;
        }
        $blog->save();
        return redirect()->route('blog.post')->with('success', 'Blog post created successfully !');
    }

    public function searchBlog(Request $request)
    {
        $searchKey = $request->searchKey;
        if($request->ajax()){
            if($searchKey != null){
                $blogShow = Blog::where('title', 'like', '%' . $searchKey . '%')
                ->orWhere('description', 'like', '%' . $searchKey . '%')
                ->orWhereHas('blogCategory', function ($query) use ($searchKey) {
                        $query->where('name', 'like', '%'.$searchKey.'%');
                    })
                ->with('blogCategory', 'blogPostUser')->get();
            }else{
                return 'Data not found';
            }
            return response()->json($blogShow);
        }
    }
}
