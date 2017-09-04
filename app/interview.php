<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class interview extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name', 'notes', 'date', 'organizationId'
    ];

    protected $dates = ['deleted_at'];
}
