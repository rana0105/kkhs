<?php

namespace App\Model\Backend;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    public function blogCategory()
    {
    	return $this->belongsTo('App\Model\Backend\Blogcategory', 'blogcategories_id');
    }

    public function blogPostUser()
    {
    	return $this->belongsTo('App\User', 'user_id');
    }

}
