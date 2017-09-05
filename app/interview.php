<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class interview extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'notes', 'date','project_id',
    ];

    protected $dates = [
        'deleted_at',
        'date',
    ];

    public function project(){return $this->belongsTo('App\project');}
    public function contacts(){return $this->belongsToMany('App\contact');}
    public function features(){return $this->belongsToMany('App\feature');}
}
