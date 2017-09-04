<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class category extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name', 'projectId',
    ];

    protected $dates = ['deleted_at'];
}
