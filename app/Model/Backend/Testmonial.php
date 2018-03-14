<?php

namespace App\Model\Backend;

use Illuminate\Database\Eloquent\Model;

class Testmonial extends Model
{
    protected $fillable = ['user_id', 'title', 'description', 'status'];

    public function testmonialUser()
    {
    	return $this->belongsTo('App\User', 'user_id');
    }
}