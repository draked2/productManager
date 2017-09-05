<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\project;

class analysisController extends Controller
{

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        $data['moduleName']='Analysis';        
        $data['project']=project::all()->pluck('name','id')->toArray();
        return view('analysis.show')->with($data);
    }

}
