<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
		use Notifiable, HasRoles;

		/**
		 * The attributes that are mass assignable.
		 *
		 * @var array
		 */
		protected $fillable = [
			'name', 'username', 'email', 'role_id', 
			'password', 'is_activated', 'student_id',
			'status', 'stage',
		];

		/**
		 * The attributes that should be hidden for arrays.
		 *
		 * @var array
		 */
		protected $hidden = [
			'password', 'remember_token',
		];
		
		public function posts()
		{
			return $this->hasMany(Post::class);
		}

		public function studentStatus()
		{
			return $this->hasOne('App\Model\Backend\Student');
		}

		public function exStudent()
		{
			return $this->hasOne('App\Model\Backend\ExStudent');
		}

		public function currentStudent()
		{
			return $this->hasOne('App\Model\Backend\CurrentStudent');
		}

		public function teacherInfo()
		{
			return $this->hasOne('App\Model\Backend\Teacher');
		}
}
