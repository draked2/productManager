<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class project extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name', 'description',
    ];

    protected $dates = ['deleted_at'];
}