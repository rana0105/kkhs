<?php

namespace App\Model\Backend;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
	protected $fillable = ['student_status'];
	
    public function studentsDetails()
    {
    	return $this->belongsTo('App\User', 'user_id');
    }
}
