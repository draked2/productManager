<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class contact extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name', 'email', 'phoneNumber', 'organization_id'
    ];

    protected $dates = ['deleted_at'];
}
