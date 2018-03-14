<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Model\Backend\Gardian;
use App\Model\Backend\Student;
use App\Model\Backend\Teacher;
use App\User;
use Auth;
use DB;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Mail;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    //protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    public function showRegistrationForm()
    {
        return view('auth.register');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $request
     * @return \Illuminate\Contracts\Validation\Validator
     */

    public function register(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string|max:255',
            'username' => 'required|string|max:255|unique:users',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6',
            'password_confirmation' => 'required|string|min:6|same:password',
            'role_id' => 'required',
        ]);
        // dd($request->all());
        $user = new User;
        $user->name = $request->name;
        $user->username = $request->username;
        $user->email = $request->email;
        $user->role_id = $request->role_id;
        $user->password = bcrypt($request->password);
        $user['link'] = str_random(30);  
        if($user->save()){
            if($user->role_id == 2){
                $teacher = new Teacher;
                $teacher->user_id = $user->id;
                $teacher->save();
            }elseif ($user->role_id == 3) {
                $student = new Student;
                $student->user_id = $user->id;
                $student->save();
            }elseif ($user->role_id == 4) {
                $gardian = new Gardian;
                $gardian->user_id = $user->id;
                $gardian->save();
            }else{
                return $user;
            }
        }else{
            return 'Not user Save';
        }

        if($user->save()){
            if($request->role_id == 2){
            $user->assignRole('Teacher');
            }elseif($request->role_id == 3){
                $user->assignRole('Student');
            }elseif($request->role_id == 4){
                $user->assignRole('Parents');
            }else{
                $user->assignRole('Admin');
            }
        }else{
            return redirect()->route('register');
        }

        $user = User::find($user['id'])->toArray();

        DB::table('user_activations')->insert(['user_id'=>$user['id'],'token'=>$user['link']]);
        Mail::send('auth.emails.activation', $user, function($message) use ($user) {
            $message->to($user['email']);
            $message->subject('kkhs.com - Activation Code');
        });
        return redirect()->route('login')->with('success', 'We sent activation code ! Please check your email !');
    }  

    public function userActivation($token)
    {
        $check = DB::table('user_activations')->where('token', $token)->first();
        if(!is_null($check)){
            $user = User::find($check->user_id);
            if ($user->is_activated == 1) {
                return redirect()->route('login')->with('success', 'User are already activated !');
            }
            $user->update(['is_activated' => 1]);
            DB::table('user_activations')->where('token', $token)->delete();
            return redirect()->route('login')->with('success', 'User activated Successfully!');
        }else{
            return redirect()->route('login')->with('warning', 'Your token is invalid!');
        }
    }
    
}
