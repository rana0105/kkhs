<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Backend\Notice;
use Illuminate\Http\Request;
use Storage;

class NoticeController extends Controller
{
    
    public function index()
    {
        $notices = Notice::all();
        return view('backend.notice.index', compact('notices'));
    }

    public function create()
    {
        return view('backend.notice.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title'       => 'required',
            'description' => 'required',
            'file'        => 'required|max:2048'
        ]);
        if ($files = $request->file('file')) {
            $filename = rand(10,100) . time() . '.' . $files->getClientOriginalExtension();
            $destinationPath = 'uploadfile/images/';
            $files->move($destinationPath, $filename);
        }
        $notice = Notice::create($request->except('file')+[
                'file' => $files?$filename:null
            ]);
        return redirect()
            ->route('notices.index')
            ->with('success', 'Notice have been created successfully !');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $notice = Notice::find($id);
        return view('backend.notice.edit', compact('notice'));
    }

    public function update(Request $request, $id)
    {
        $files = $request->file('file');
        $notice = Notice::find($id);
        if($files != null){
            $filename = rand(10,100) . time() . '.' . $files->getClientOriginalExtension();
            $destinationPath = 'uploadfile/images/';
            $files->move($destinationPath, $filename);
            $oldFilename = $notice->file;
            $notice->file = $filename;
            Storage::delete($oldFilename);
        }else{
            $notice->update($request->except('file'));
        }
        $notice->update($request->except('file'));
        return redirect()->route('notices.index')->with('success', 'Notice have been upadated successfully !');
    }

    public function destroy($id)
    {
        $notice = Notice::find($id)->delete();
        return redirect()
            ->route('notices.index')
            ->with('danger', 'Notice have been deleted successfully !');
    }
}
