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

    public function project(){return $this->hasManyThrough('App\project','App\category',
                                                            'project_id','id','category_id');}
    public function interviews(){return $this->belongsToMany('App\feature');}
                                                            
    
}
