<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class category extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name', 'project_id',
    ];

    protected $dates = ['deleted_at'];
}
