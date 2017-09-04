<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use SoftDeletes;

class organization extends Model
{
    

    protected $fillable = [
        'name', 
    ];

    protected $dates = ['deleted_at'];
}
