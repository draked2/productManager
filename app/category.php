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

    public function project(){return $this->belongsTo('App\project');}
    public function features(){return $this->hasMany('App\feature');}

    
}
