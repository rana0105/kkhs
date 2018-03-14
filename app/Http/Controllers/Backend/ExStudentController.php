<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Backend\ExStudent;
use App\Model\Backend\Student;
use App\User;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Image;
use Intervention\Image\ImageManager;
use Storage;

class ExStudentController extends Controller
{
    
    public function index()
    {
        $exStudents = ExStudent::all();
        return view('backend.ex_student.index', compact('exStudents'));
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

    public function exStudentProfileSetting()
    {
        $profile = Auth::user()->load('studentStatus', 'exStudent');
        return view('frontend.profileSetting.exStudentProfileSetting', compact('profile'));
    }

    public function exStudentProfileStatus(Request $request, $id)
    {
        Auth::user()->studentStatus->update([
            'student_status' => $request->status
        ]);
        return redirect()->route('ex.student.profile.setting')->with('success', 'Status change successfully !');
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
        return redirect()->route('ex.student.profile.setting')->with('success', 'Profile details updated !');
       
    }

    public function postMyselfdupdate(Request $request, $id)
    {
        $socialLink = $request->input('social_link');
        $images = $request->file('image');
        if($request->studentstatus == 2){
            $profile = ExStudent::where('user_id', $id)->first();
            if($profile && $profile->user_id != null){
                if($images != null){
                    $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
                    $location = 'uploadfile/images/'. $filename;
                    Image::make($images)->resize(600 , 600)->save($location);
                    $oldFilename = $profile->ex_student_image;
                    $profile->ex_student_image = $filename;
                    Storage::delete($oldFilename);
                }else{
                    $profile->ex_student_phone = $request->exphone;
                    $profile->ex_student_education = $request->exeducation;
                    $profile->ex_student_education_institution = $request->exinstitution;
                    $profile->ex_student_profession = $request->profession;
                    $profile->ex_student_designation = $request->designation;
                    $profile->ex_student_profession_institute = $request->institute;
                    $profile->ex_student_address = $request->address;
                    $profile->ex_student_passing_year = $request->passing_year;
                    $profile->social_link = implode(',', $socialLink);
                }
                $profile->ex_student_phone = $request->exphone;
                $profile->ex_student_education = $request->exeducation;
                $profile->ex_student_education_institution = $request->exinstitution;
                $profile->ex_student_profession = $request->profession;
                $profile->ex_student_designation = $request->designation;
                $profile->ex_student_profession_institute = $request->institute;
                $profile->ex_student_address = $request->address;
                $profile->ex_student_passing_year = $request->passing_year;
                $profile->social_link = implode(',', $socialLink);
                $profile->save();
            }else{
                if($images){
                    $filename = rand(10,100) . time().'.'.$images->getClientOriginalExtension();
                    $location = 'uploadfile/images/'. $filename;
                    Image::make($images)->resize(600 , 600)->save($location);

                    $profile = new ExStudent;
                    $profile->user_id = $id;
                    $profile->ex_student_phone = $request->exphone;
                    $profile->ex_student_education = $request->exeducation;
                    $profile->ex_student_education_institution = $request->exinstitution;
                    $profile->ex_student_profession = $request->profession;
                    $profile->ex_student_designation = $request->designation;
                    $profile->ex_student_profession_institute = $request->institute;
                    $profile->ex_student_address = $request->address;
                    $profile->ex_student_passing_year = $request->passing_year;
                    $profile->social_link = implode(',', $socialLink);
                    $profile->ex_student_image = $filename;
                    $profile->save();
                    return redirect()->route('ex.student.profile.setting')->with('success', 'MySelf Save successfully !');
                }
            }
            return redirect()->route('ex.student.profile.setting')->with('success', 'MySelf upadated successfully !');
        }
        return redirect()->route('ex.student.profile.setting')->with('warning', 'Student Status not validate !');
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
        return redirect()->route('ex.student.profile.setting')->with('success', 'User password have been changed successfully !');
    }

    public function getExStudentProfile()
    {
        $profile = Auth::user()->load('studentStatus', 'exStudent');
        return view('frontend.profileSetting.singleExstudentProfile', compact('profile'));
    }

}
