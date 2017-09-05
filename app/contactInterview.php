<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\Pivot;


class contactInterview extends Pivot
{
    protected $table = 'contact_interview';
    protected $fillable = [
        'contact_id', 'interview_id'
    ];
}
