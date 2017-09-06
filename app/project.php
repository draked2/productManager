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

    //Relationships
    public function interviews(){return $this->hasMany('App\interview');}
    public function categories(){return $this->hasMany('App\category');}
    public function features(){return $this->hasManyThrough('App\feature','App\category','project_id','category_id','id');}
    
    //Scopes
    public function scopeAnalytics($query,$start,$stop)
    {
        return $query->with(["categories.features.interviews"=>function($query) use ($start, $stop){
                        $query->where('date','<',$stop)
                        ->where('date','>',$start);   
                    }])
                    ->with(['interviews'=>function($query) use ($start, $stop){
                        $query->where('date','<',$stop)
                            ->where('date','>',$start);
                    }]);
    }
}
