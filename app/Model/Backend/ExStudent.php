<?php

namespace App\Model\Backend;

use Illuminate\Database\Eloquent\Model;

class ExStudent extends Model
{
    public function exStudentInfo()
    {
    	return $this->belongsTo('App\User', 'user_id');
    }
}
