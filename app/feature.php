<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class feature extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name', 'category_id',
    ];

    protected $dates = ['deleted_at'];
}
