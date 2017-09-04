<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class contact extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name', 'email', 'phoneNumber', 'organizationId'
    ];

    protected $dates = ['deleted_at'];
}
