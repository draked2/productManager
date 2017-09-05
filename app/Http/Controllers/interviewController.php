<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\interview;
use App\project;
use App\contact;

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
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        $data['projectfeatureList']= project::Find($data['interview']->project_id)->with('features')->first();
        $data['contacts']=contact::pluck('name')->toArray();
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
}
