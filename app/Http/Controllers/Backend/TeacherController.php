<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Backend\Teacher;
use App\Permission;
use App\Role;
use App\User;
use Illuminate\Http\Request;
use Auth;

class TeacherController extends Controller
{
    
    public function index()
    {
        $teachers = Teacher::orderBy('id', 'desc')->get();
        return view('backend.teacher.index', compact('teachers'));
    }

    public function edit($id)
    {
        $user = User::with('teacherInfo')->find($id);
        $roles = Role::pluck('name', 'id');
        $permissions = Permission::all('name', 'id');

        return view('backend.teacher.edit', compact('user', 'roles', 'permissions'));
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
        $user->fill($request->except('roles', 'permissions', 'password', 'teacher_status')+['role_id' => $request->roles]);
        if($user){
            $teacher = Teacher::where('user_id', $id)->update(['teacher_status' => $request->teacher_status]);
        }

        // check for password change
        if($request->get('password')) {
            $user->password = bcrypt($request->get('password'));
        }

        // Handle the user roles
        $this->syncPermissions($request, $user);

        $user->save();

        flash()->success('User has been updated.');

        return redirect()->route('teachers.index');
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

    public function getTeacherStatus()
    {
        $profile = Auth::user()->load('teacherInfo');
        return view('frontend.profileSetting.teacherStatus', compact('profile'));
    }

    public function postTeacherStatus(Request $request, $id)
    {
        Auth::user()->teacherInfo->update($request->all());
        if(Auth::user()->teacherInfo->teacher_status == 2){
            return redirect()->route('ex.teacher.profile.setting')->with('success', 'Status change successfully !');
        }elseif(Auth::user()->teacherInfo->teacher_status == 1){
            return redirect()->route('current.teacher.profile.setting')->with('success', 'Status change successfully !');
        }else{
            return redirect()->route('teacher.status')->with('warning', 'Status did not change for teacher !');
        }
    }
}
