<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Backend\Testmonial;
use App\User;
use Auth;
use Illuminate\Http\Request;

class TestmonialController extends Controller
{
    public function index()
    {
        $testmonials = Testmonial::all();
        return view('backend.testmonial.index', compact('testmonials'));
    }

    public function create()
    {
        $students = User::where('role_id', 3)->get();
        return view('backend.testmonial.create', compact('students'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'user_id'             => 'required',
            'title'             => 'required',
            'description'       => 'required',
        ]);
        $checkUser = Testmonial::where('user_id', $request->user_id)->first();
        if(!$checkUser){
            $testmonial = Testmonial::create($request->all());
            return redirect()->route('testmonials.index')->with('success', 'Data have been sucessfully save !');
        }else{
            return redirect()->route('testmonials.index')->with('danger', 'Data already have been created for this Student!');
        }

    }

    public function edit($id)
    {
        $testmonial = Testmonial::find($id);
        $students = User::where('role_id', 3)->get();
        $student     = array();
        foreach ($students as $key => $value) {
            $student[$value->id] = $value->name;
        }
        return view('backend.testmonial.edit', compact('testmonial', 'student'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'user_id'             => 'required',
            'title'             => 'required',
            'description'       => 'required',
        ]);
        if($request->status != null){
            $testmonial = Testmonial::find($id)->update($request->all());
        }else{
           $testmonial = Testmonial::find($id)->update($request->all()+[
                        'status' => 0
                    ]);
        }
        return redirect()->route('testmonials.index')->with('success', 'Data have been sucessfully save !');
    }

    public function destroy($id)
    {
        $testmonial = Testmonial::find($id)->delete();
        return redirect()->route('testmonials.index')->with('danger', 'Data have been sucessfully Deleted !');
    }

    public function getTestmonialPost()
    {
        $testmonial = Testmonial::where('user_id', Auth::user()->id)->first();
        return view('frontend.pages.testmonialCreate', compact('testmonial'));
    }

    public function postTestmonialStore(Request $request)
    {
        $this->validate($request, [
            'title'             => 'required',
            'description'       => 'required',
        ]);
        $checkUser = Testmonial::where('user_id', Auth::user()->id)->first();
        if(!$checkUser){
            $testmonial = Testmonial::create($request->all()+[
                    'user_id' => Auth::user()->id
                ]);
            return redirect()->route('testmonial.post')->with('success', 'Data have been sucessfully save !');
        }else{
            $testmonial = Testmonial::where('user_id', Auth::user()->id)
                        ->first()
                        ->update($request->all()); 
            return redirect()->route('testmonial.post')->with('success', 'Data have been sucessfully updated !');
        }
        return redirect()->route('testmonial.post')->with('danger', 'Data did not sucessfully save !');
    }
}
