<?php

namespace App\Model\Backend;

use Illuminate\Database\Eloquent\Model;

class CurrentStudent extends Model
{
	protected $fillable = ['student_remark'];
    public function currentStudentInfo()
    {
    	return $this->belongsTo('App\User', 'user_id');
    }
}