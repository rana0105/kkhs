<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Backend\Achieve;
use Illuminate\Http\Request;

class AchieveController extends Controller
{
    
    public function index()
    {
        $achieves = Achieve::all();
        return view('backend.achieve.index', compact('achieves'));
    }

    
    public function create()
    {
        return view('backend.achieve.create');
    }

    
    public function store(Request $request)
    {
        $this->validate($request, [
            'date' => 'required',
            'title' => 'required',
            'description' => 'required'
        ]);

        $achieve = Achieve::create($request->all());
        return redirect()->route('achieve.index')->with('success', 'Data have been save sucessfully !');
    }
    
    public function edit($id)
    {
        $achieve = Achieve::find($id);
        return view('backend.achieve.edit', compact('achieve'));
    }

    
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'date' => 'required',
            'title' => 'required',
            'description' => 'required'
        ]);

        $achieve = Achieve::find($id)->update($request->all());
        return redirect()->route('achieve.index')->with('success', 'Data have been updated sucessfully !');
    }

    
    public function destroy($id)
    {
        $achieve = Achieve::find($id)->delete();
        return redirect()->route('achieve.index')->with('success', 'Data have been deleted sucessfully !');
    }
}
