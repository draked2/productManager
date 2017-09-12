<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\interview;
use App\project;
use App\contact;
use App\featureInterview;
use App\contactInterview;

class interviewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data=[];
        $data['moduleName']='Interviews List';
        $data['interviews']=interview::with('project')->with('contacts')->orderBy('date','DESC')->get();
        return view('interview.show', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['moduleName']='Interview Details';  
        $projectId=project::all()->first()->id;
        $data['projectfeatureList']= project::Find($projectId)->with('features')->first()->features->pluck('name','id')->toArray();
        $data['contacts']=contact::pluck('name','id')->toArray();
        $data['selectedProject']=$projectId;
        $data['projects']=project::all()->pluck('name','id')->toArray();

        $prevObj=interview::where('project_id',$projectId)->get()->last();
        if(isset($prevObj)) $data['prevURL']=url('/interviews/update/'.$prevObj->id);

        return view('interview.addedit', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $id=$request->id;
        $newValues=[
            'date'=>$request->date,  
            'notes'=>$request->notes,
            'project_id'=>$request->project,    
        ];
        //make the boring entries
        if($id) {$newInterview=interview::find($id)->update($newValues);}
        else {
            
            $newInterview=interview::create($newValues);
            $id=$newInterview->id;
        }
        //update the pivot tables by first deleting all current entries, then adding new entries
        featureInterview::where('interview_id',$id)->delete();
        if(isset($request->features))
        {
            foreach($request->features as $feature){
                featureInterview::create(['interview_id'=>$id,
                                            'feature_id'=>$feature
                                        ]);
            }
        }
        contactInterview::where('interview_id',$id)->delete();
        if(isset($request->contacts))
        {
            foreach($request->contacts as $contact){
                if(!(string)(int)$contact == $contact) 
                {
                    $newContact=contact::create([
                    'name'=>$contact,
                    ]);
                    $contact=$newContact->id;
                }
                contactInterview::create(['interview_id'=>$id,
                                            'contact_id'=>$contact
                                        ]);
            }
        }
        return redirect('/interviews');

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
    public function edit($id)
    {
        //
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
        $data['moduleName']='Interview Details';        
        $data['interview']=interview::where('id',$id)->with('project')->with('contacts')->with('features')->first();
        $data['projectfeatureList']= project::Find($data['interview']->project_id)->with('features')->first()->features->pluck('name','id')->toArray();
        $data['contacts']=contact::pluck('name','id')->toArray();
        $data['selectedProject']=$data['interview']->project_id;
        $data['projects']=project::all()->pluck('name','id')->toArray();

        $nextObj=interview::where('id','>',$id)->where('project_id',$data['interview']->project_id)->first();
        $prevObj=interview::where('id','<',$id)->where('project_id',$data['interview']->project_id)->get()->last();
        
        /*
        $postedDate=$data['interview']->date->format('y-m-d');
        $createdDate=$data['interview']->created_at->format('y-m-d h:i:s');
        $nextObj=interview::whereRaw(" date(`date`)>'".$postedDate."' OR (date(`date`)='".$postedDate."' AND `created_at`>'".$createdDate."' AND id <> '".$id."')")->orderBy('created_at','ASC')->orderBy('date','ASC')->first();
        $prevObj=interview::whereRaw(" date(`date`)<'".$postedDate."' OR (date(`date`)='".$postedDate."' AND `created_at`<'".$createdDate."' AND `created_at`<>'".$createdDate."' AND id <> '".$id."')")->orderBy('created_at','DESC')->orderBy('date','DESC')->first();
        */
        
        if(isset($nextObj)) $data['nextURL']=url('/interviews/update/'.$nextObj->id);
        if(isset($prevObj)) $data['prevURL']=url('/interviews/update/'.$prevObj->id);

        return view('interview.addedit', $data);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        interview::find($id)->delete();
        return redirect('/interviews');
    }

    public function loadFeatures(Request $request)
    {
        $id=$request->id;
        return(project::where('id',$id)->with('features')->first()->features->pluck('name','id')->toArray());
    }
}
