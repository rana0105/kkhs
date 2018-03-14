<?php

namespace App\Model\Backend;

use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
	protected $fillable = [
						'user_id',
						'teacher_phone',
						'teacher_education',
						'teacher_desingnation',
						'teacher_desingnation',
						'teacher_institute',
						'teacher_address',
						'social_link',
						'teacher_image',
						'teacher_status'
						];
    public function teachersDetails()
    {
    	return $this->belongsTo('App\User', 'user_id');
    }
}
