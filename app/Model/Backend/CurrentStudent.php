<?php

namespace App\Model\Backend;

use Illuminate\Database\Eloquent\Model;

class CurrentStudent extends Model
{
	protected $fillable = ['student_remark'];
	protected $appends = ['sclass', 'section'];
    public function currentStudentInfo()
    {
    	return $this->belongsTo('App\User', 'user_id');
    }

    public function getSclassAttribute()
	{
	    return config('class.reverse_class');
	}

	public function getSectionAttribute()
	{
	    return config('section.reverse_section');
	}
}