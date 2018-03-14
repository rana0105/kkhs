<?php

namespace App\Model\Backend;

use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    protected $fillable = ['title', 'description', 'file', 'created_at', 'updated_at'];
}
