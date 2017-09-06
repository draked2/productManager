<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\project;
use App\category;
use App\feature;

class projectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data=[];
        $data['moduleName']='Projects List';
        $data['projects']=project::get();
        return view('project.show', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['moduleName']='Project Details';        
        return view('project.addedit', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //update the boring old project
        $id=$request->id;
        $newValues=[
            'name'=>$request->name,  
            'description'=>$request->description,    
        ];
        
        if($id) {
            $project=project::where('id',$id)->update($newValues);
            $project=project::where('id',$id);
        }
        else {
            //$id=0 means we're making a new entry
            //update the entry and record it's actual id
            $project=project::create($newValues);
            $id=$project->id;
        }
        //get the keys of the category array
        
        $indeces=array_keys($request->category);
        foreach($indeces as $index)
        {
            //existing category
            if($index>0)
            {
                //do we want to delete this category?
                if($request->deleteFlag[$index])
                {
                    feature::where('category_id',$index)->delete();
                    category::where('id',$index)->delete();
                }
                //otherwise run this convoluted code to update category
                else
                {
                    //update category
                    category::where('id', $index)->update(['name'=>$request->category[$index]]);
                    //find all features that point to this category. If they don't exist in this array remove them, add the missing one
                    $cat=category::where('id',$index)->with('features')->first();
                    //remove unnecessary entries
                    $currentFeatures=explode(',',$request->features[$index]);
                    
                    foreach($currentFeatures as $feature)
                    {
                        //if a feature, remove if from collection
                        if(!($cat->features->contains('name',$feature))) {
                            feature::create(['name'=>$feature,
                                            'project_id'=>$id,
                                            'category_id'=>$cat->id
                                            ]);
                        }
                    }
                    //THERE MUST BE A CLEANER WAY OF DOING THIS BUT IM WASTING SO MUCH TIME IM JUST GOING TO DO A SECOND LOOP
                    foreach($cat->features as $feature)
                    {
                        if(!in_array($feature->name,$currentFeatures)){
                            $feature->delete();
                        }
                    }
                }
            //is this a new element that we actually want to have inserted?
            }else if ($index<0&&!$request->deleteFlag[$index]){
                //create the new category (this is identified by a negative index)
                $cat=category::create(['name'=>$request->category[$index],
                                    'project_id'=>$id
                                ]);
                $currentFeatures=explode(',',$request->features[$index]);
                //create all new features for this new category
                foreach($currentFeatures as $feature)
                {
                    feature::create(['name'=>$feature,
                                    'project_id'=>$id,
                                    'category_id'=>$cat->id
                    ]);
                }                              
            }
        }
        
        return redirect('/projects');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function addNew()
    {
        return redirect('/projects');
        $data['moduleName']='Project Details';  
        dd($data);
        return view('project.addedit', $data);        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data['moduleName']='Project Details';        
        $data['project']=project::where('id',$id)->with('categories.features')->first();
        return view('project.addedit', $data);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        project::find($id)->delete();
        return redirect('/projects');
    }
}
