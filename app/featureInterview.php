<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class featureInterview extends Model
{
    protected $table = 'feature_interview';
    protected $fillable = [
        'feature_id', 'interview_id'
    ];
}
