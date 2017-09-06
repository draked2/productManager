<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\project;
use App\Traits\AnalyticsTrait;
use dateTime;
use dateInterval;

class analysisController extends Controller
{
    use AnalyticsTrait;

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

    public function getData(Request $request)
    {
        //only return stats on categories
        $start=new dateTime($request->start);
        $stop=new dateTime($request->stop);        
        $analyticsObject=project::where('id',$request->id)->analytics($start,$stop)->first();
        $allCategoriesAndFeatures=self::countCategoriesAndFeatures($analyticsObject);
        $interviewCount=self::countInterviews($analyticsObject,$start,$stop);


        $data['categoryStats']=$allCategoriesAndFeatures['categoryStats'];
        $data['featureStats']=$allCategoriesAndFeatures['featureStats'];
        $data['interviewCount']=$interviewCount;

        return $data;

    }

    public function test(Request $request)
    {
        $stop=new dateTime();
        $start=(new dateTime())->sub(new DateInterval('P7D'));
        $analyticsObject=project::find(1)->analytics($start,$stop)->first();
        dd($interviewCount=self::countInterviews($analyticsObject,$start,$stop));
    }
    

}
