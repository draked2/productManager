<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class project extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name', 'description',
    ];

    protected $dates = ['deleted_at'];

    public function interviews(){return $this->belongsToMany('App\interview');}
    public function categories(){return $this->belongsToMany('App\category');}
    public function features(){return $this->hasManyThrough('App\feature','App\category','project_id','category_id','id');}
    
}
