<?php

namespace App\Http\Controllers;

use App\Model\Backend\About;
use App\Model\Backend\Achieve;
use App\Model\Backend\Blog;
use App\Model\Backend\CurrentStudent;
use App\Model\Backend\ExStudent;
use App\Model\Backend\Gallery;
use App\Model\Backend\Notice;
use App\Model\Backend\Sevent;
use App\Model\Backend\Slider;
use App\Model\Backend\Teacher;
use App\Model\Backend\Testmonial;
use App\User;
use Auth;
use Carbon\Carbon;
use Charts;
use DB;
use Illuminate\Http\Request;
use View;
use Mail;

class HomeController extends Controller
{
    public function index()
    {
      $sliders = Slider::orderBy('id', 'desc')
                ->limit(5)
                ->get();
      $testmonials = Testmonial::orderBy('id', 'desc')
                    ->where('status', 1)
                    ->with('testmonialUser.studentStatus', 'testmonialUser.exStudent', 'testmonialUser.currentStudent')
                    ->limit(5)
                    ->get();
        $events = Sevent::orderBy('id', 'desc')
                ->limit(4)
                ->get();
        $notices = Notice::orderBy('id', 'desc')->limit(6)->get(); 
      return view('frontend.index', compact('sliders', 'testmonials', 'events', 'notices'));
    }

    public function eventShow($id)
    {
        $event = Sevent::find($id);
        return view('frontend.eventShow', compact('event'));
    }

    public function getAbout()
    {
      $about = About::first();
      $achieves = Achieve::limit(3)->get();
      $faculties = Teacher::with('teachersDetails')->limit(4)->get();
      return view('frontend.pages.about-us', compact('about', 'faculties', 'achieves'));
    }

    public function getTeachers()
    {
        $cuprofile = Teacher::where('teacher_status', 1)->with('teachersDetails')->get();
        $exprofile = Teacher::where('teacher_status', 2)->with('teachersDetails')->get();
    	return view('frontend.pages.teacher', compact('cuprofile', 'exprofile'));
    }

    public function getCurrentStudent()
    {
        $currentStudent = CurrentStudent::with('currentStudentInfo')->get();
        return view('frontend.pages.current_student', compact('currentStudent'));
    }

    public function currentStudentInfo($id)
    {
        $currentStudent = CurrentStudent::where('user_id', $id)->with('currentStudentInfo')->first();
        return view('frontend.pages.currentStudentShow', compact('currentStudent'));
    }

    public function getExStudent()
    {
        $exStudent = ExStudent::with('exStudentInfo')->get();
    	return view('frontend.pages.ex_student', compact('exStudent'));
    }

    public function exStudentInfo($id)
    {
        $exStudent = ExStudent::where('user_id', $id)->with('exStudentInfo')->first();
        return view('frontend.pages.exstudentShow', compact('exStudent'));
    }

    public function searchExStudent(Request $request)
    {
        $searchKey = $request->searchKey;
        if($request->ajax()){
            if($searchKey != null){
                $result = ExStudent::where('ex_student_phone', 'like', '%' . $searchKey . '%')
                ->orWhere('ex_student_education', 'like', '%' . $searchKey . '%')
                ->orWhere('ex_student_education_institution', 'like', '%' . $searchKey . '%')
                ->orWhere('ex_student_profession', 'like', '%' . $searchKey . '%')
                ->orWhere('ex_student_designation', 'like', '%' . $searchKey . '%')
                ->orWhere('ex_student_profession_institute', 'like', '%' . $searchKey . '%')
                ->orWhere('ex_student_address', 'like', '%' . $searchKey . '%')
                ->orWhere('ex_student_passing_year', 'like', '%' . $searchKey . '%')
                ->orWhere('user_id', 'like', '%' . $searchKey . '%')
                ->orWhereHas('exStudentInfo', function ($query) use ($searchKey) {
                        $query->where('name', 'like', '%'.$searchKey.'%');
                    })
                ->get();
                return response()->json();
            }else{
                return 'Data not found';
            }
        }
        
    }

    public function getGallery()
    {
        $galleries = Gallery::orderBy('id', 'desc')->paginate(8);
    	return view('frontend.pages.gallery', compact('galleries'));
    }
    
    public function getContact()
    {
    	return view('frontend.pages.contact-us');
    }

    public function postContact(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'message' => 'required|min:6'
        ]);
        $data = array(
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'bodyMessage' => $request->message
        );
        $email = Mail::send('auth.emails.contact', $data, function($message) use ($data){
            $message->from($data['email']);
            $message->to('ra.ranacse@gmail.com');
            $message->subject($data['name']);
        });
        if($email == null){
            return redirect()->route('contact')->with('success', 'This message have been send successfully!');
        }else{
            return redirect()->route('contact')->with('error', 'This message did not send successfully!');
        }
    }
}

