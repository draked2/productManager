<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class feature extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name', 'categoryId',
    ];

    protected $dates = ['deleted_at'];
}
