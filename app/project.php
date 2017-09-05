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

    protected static function boot() 
    {
      parent::boot();

      static::deleting(function($projects) {
         foreach ($projects->interviews()->get() as $interview) {
            $interview->delete();
         }
      });
    }

    public function interviews(){return $this->hasMany('App\interview');}
    public function categories(){return $this->hasMany('App\category');}
    public function features(){return $this->hasManyThrough('App\feature','App\category','project_id','category_id','id');}
    
}
