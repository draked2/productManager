<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\interview;
use App\project;
use App\contact;
use App\featureInterview;
use App\contactInterview;
use DateTime;

class contactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data=[];
        $data['moduleName']='Contact List';
        $data['contacts']=contact::all()->sortBy('name');
        return view('contact.show', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['moduleName']='Contact Details';  
        return view('contact.addedit', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);
        
        $id=$request->id;
        $newValues=[
            'name'=>$request->name,
            'email'=>$request->email,
            'phoneNumber'=>$request->phoneNumber,    
        ];
        //make the boring entries
        if($id) {contact::find($id)->update($newValues);}
        else {contact::create($newValues);}
       
        return redirect('/contacts');
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
        $data['moduleName']='Contact Details';        
        $data['contact']=contact::where('id',$id)->first();

        return view('contact.addedit', $data);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        contact::find($id)->delete();
        return redirect('/contacts');
    }

}
