<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Backend\Teacher;
use App\User;
use Auth;
use Illuminate\Http\Request;
use Image;
use Intervention\Image\ImageManager;
use Storage;


class CurrentTeacherController extends Controller
{
    
    public function index()
    {
        $currentTeachers = Teacher::where('teacher_status', 1)->get();
        return view('backend.current_teacher.index', compact('currentTeachers'));
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }

    public function currentTeacherProfileSetting()
    {
        $profile = Auth::user()->load('teacherInfo');
        return view('frontend.profileSetting.currentTeacherProfileSetting', compact('profile'));
    }

    public function currentTeacherProfileStatus(Request $request, $id)
    {
        Auth::user()->teacherInfo->update($request->all());
        return redirect()->route('current.teacher.profile.setting')->with('success', 'Status change successfully !');
    }

    public function postProfileupdate(Request $request, $id)
    {
        $this->validate($request, [
            'name' => '',
            'username' => 'required|string|max:255|unique:users,username,' . $id,
            'email' => 'required|string|email|max:255|unique:users,email,' . $id,
        ]);
        $profile = User::find($id);
        $profile->name = $request->name;
        $profile->username = $request->username;
        $profile->email = $request->email;
        $profile->save();
        return redirect()->route('current.teacher.profile.setting')->with('success', 'Profile details updated !');
       
    }

    public function postMyselfdupdate(Request $request, $id)
    {
        $socialLink = $request->input('social_link');
        $images = $request->file('teacher_image');
        $profile = Teacher::where('user_id', $id)->first();
            if($images != null){
                $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
                $location = 'uploadfile/images/'. $filename;
                Image::make($images)->resize(600 , 600)->save($location);
                $oldFilename = $profile->teacher_image;
                $profile->teacher_image = $filename;
                Storage::delete($oldFilename);
                $profile->save();
            }else{
                $profile = Teacher::where('user_id', $id)->update($request->except('teacher_image', '_token', 'social_link')+[
                    'social_link' => implode(',', $socialLink)
                    ]);
            }
            $profile = Teacher::where('user_id', $id)->update($request->except('teacher_image', '_token', 'social_link')+[
                    'social_link' => implode(',', $socialLink)
                    ]);
        return redirect()->route('current.teacher.profile.setting')->with('success', 'MySelf upadated successfully !');
    }

    public function postPasswordupdate(Request $request, $id)
    {
        $this->validate($request, [
            'old_password' => 'required',
            'new_password' => 'required|min:6',
            'password_confirmation' => 'required|same:new_password',
        ]);

        $data = $request->old_password;
    
        $user = User::find($id);
        if(!\Hash::check($data, $user->password)){
             return back()
                        ->with('error','The specified password does not match the database password');
        }else{
           $user->password = bcrypt($request->new_password);

           $user->save();
        }
        return redirect()->route('current.teacher.profile.setting')->with('success', 'User password have been changed successfully !');
    }

    public function getTeacherProfile()
    {
        $profile = Auth::user()->load('teacherInfo');
        return view('frontend.profileSetting.singleCurrentTeacherProfile', compact('profile'));
    }

    
}
