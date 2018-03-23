<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Backend\CurrentStudent;
use App\Model\Backend\Student;
use App\User;
use Auth;
use Illuminate\Support\Facades\Input;
use Image;
use Intervention\Image\ImageManager;
use Storage;

class CurrentStudentController extends Controller
{
    
    public function index()
    {
        $currentStuents = CurrentStudent::all();
        return view('backend.current_student.index', compact('currentStuents'));
    }

    public function show($id)
    {
        $currentStuent = CurrentStudent::find($id);
        return view('backend.current_student.show', compact('currentStuent'));
    }

    public function edit($id)
    {
        $currentStuent = CurrentStudent::find($id);
        return view('backend.current_student.edit', compact('currentStuent'));
    }

    public function update(Request $request, $id)
    {
        $currentStuent = CurrentStudent::find($id);
        $currentStuent->student_remark = $request->student_remark;
        $currentStuent->save();
        return redirect()->route('current-student.index')->with('success', 'Student remark have been created !');
    }

    public function destroy($id)
    {
        //
    }

    public function currentStudentProfileSetting()
    {
        $profile = Auth::user()->load('studentStatus', 'currentStudent');
        return view('frontend.profileSetting.currentStudentProfileSetting', compact('profile'));
    }

    public function currentStudentProfileStatus(Request $request, $id)
    {
        Auth::user()->studentStatus->update([
            'student_status' => $request->status
        ]);
        return redirect()->route('current.student.profile.setting')->with('success', 'Status change successfully !');
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
        return redirect()->route('current.student.profile.setting')->with('success', 'Profile details updated !');
       
    }

    public function postMyselfdupdate(Request $request, $id)
    {
        $socialLink = $request->input('social_link');
        $images = $request->file('image');
        if($request->studentstatus == 1){
            $profile = CurrentStudent::where('user_id', $id)->first();
            if($profile && $profile->user_id != null){
                if($images != null){
                    $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
                    $location = 'uploadfile/images/'. $filename;
                    Image::make($images)->resize(600 , 600)->save($location);
                    $oldFilename = $profile->student_image;
                    $profile->student_image = $filename;
                    Storage::delete($oldFilename);
                }else{
                    $profile->student_class = $request->student_class;
                    $profile->student_section = $request->student_section;
                    $profile->student_department = $request->student_department;
                    $profile->student_phone = $request->student_phone;
                    $profile->student_father_name = $request->student_father_name;
                    $profile->student_mother_name = $request->student_mother_name;
                    $profile->student_parent_phone = $request->student_parent_phone;
                    $profile->student_address = $request->student_address;
                    $profile->social_link = implode(',', $socialLink);
                }
                $profile->student_class = $request->student_class;
                $profile->student_section = $request->student_section;
                $profile->student_department = $request->student_department;
                $profile->student_phone = $request->student_phone;
                $profile->student_father_name = $request->student_father_name;
                $profile->student_mother_name = $request->student_mother_name;
                $profile->student_parent_phone = $request->student_parent_phone;
                $profile->student_address = $request->student_address;
                $profile->social_link = implode(',', $socialLink);
                $profile->save();
            }else{
                if($images){
                    $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
                    $location = 'uploadfile/images/'. $filename;
                    Image::make($images)->resize(600 , 600)->save($location);

                    $profile = new CurrentStudent;
                    $profile->user_id = $id;
                    $profile->student_class = $request->student_class;
                    $profile->student_section = $request->student_section;
                    $profile->student_department = $request->student_department;
                    $profile->student_phone = $request->student_phone;
                    $profile->student_father_name = $request->student_father_name;
                    $profile->student_mother_name = $request->student_mother_name;
                    $profile->student_parent_phone = $request->student_parent_phone;
                    $profile->student_address = $request->student_address;
                    $profile->social_link = implode(',', $socialLink);
                    $profile->student_image = $filename;
                    $profile->save();
                    return redirect()->route('current.student.profile.setting')->with('success', 'MySelf Save successfully !');
                }
            }
            return redirect()->route('current.student.profile.setting')->with('success', 'MySelf upadated successfully !');
        }
        return redirect()->route('current.student.profile.setting')->with('warning', 'Student Status not validate !');
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
        return redirect()->route('current.student.profile.setting')->with('success', 'User password have been changed successfully !');
    }

    public function getCurrentStudentProfile()
    {
        $profile = Auth::user()->load('studentStatus', 'currentStudent');
        return view('frontend.profileSetting.singleCurrentstudentProfile', compact('profile'));
    }
}
