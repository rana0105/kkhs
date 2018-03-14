<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Backend\ExStudent;
use App\Model\Backend\Student;
use App\Permission;
use App\Role;
use App\User;
use Auth;
use Illuminate\Http\Request;

class StudentController extends Controller
{
   
    public function index()
    {
        $students = Student::orderBy('id', 'desc')->get();
        return view('backend.student.index', compact('students'));
    }

    public function edit($id)
    {
        $user = User::with('studentStatus')->find($id);
        $roles = Role::pluck('name', 'id');
        $permissions = Permission::all('name', 'id');

        return view('backend.student.edit', compact('user', 'roles', 'permissions'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'bail|required|min:2',
            'username' => 'required|unique:users,username,' . $id,
            'email' => 'required|email|unique:users,email,' . $id,
            'roles' => 'required|min:1'
        ]);

        // Get the user
        $user = User::findOrFail($id);

        // Update user
        $user->fill($request->except('roles', 'permissions', 'password', 'student_status')+['role_id' => $request->roles]);
        if($user){
            $teacher = Student::where('user_id', $id)->update(['student_status' => $request->student_status]);
        }

        // check for password change
        if($request->get('password')) {
            $user->password = bcrypt($request->get('password'));
        }

        // Handle the user roles
        $this->syncPermissions($request, $user);

        $user->save();

        flash()->success('User has been updated.');

        return redirect()->route('students.index');
    }

    private function syncPermissions(Request $request, $user)
    {
        // Get the submitted roles
        $roles = $request->get('roles', []);
        $permissions = $request->get('permissions', []);

        // Get the roles
        $roles = Role::find($roles);

        // check for current role changes
        if( ! $user->hasAllRoles( $roles ) ) {
            // reset all direct permissions for user
            $user->permissions()->sync([]);
        } else {
            // handle permissions
            $user->syncPermissions($permissions);
        }

        $user->syncRoles($roles);

        return $user;
    }

    public function getStudentStatus()
    {
        $profile = Auth::user()->load('studentStatus');
        return view('frontend.profileSetting.studentStatus', compact('profile'));
    }

    public function updateStudentStatus(Request $request, $id)
    {
        Auth::user()->studentStatus->update([
            'student_status' => $request->status
        ]);
        if(Auth::user()->studentStatus->student_status == 2){
            return redirect()->route('ex.student.profile.setting')->with('success', 'Status change successfully !');
        }elseif (Auth::user()->studentStatus->student_status == 1) {
            return redirect()->route('current.student.profile.setting')->with('success', 'Status change successfully !');
        }else{
            return redirect()->route('student.status')->with('warning', 'Status did not change for student!');
        }
    }
}
