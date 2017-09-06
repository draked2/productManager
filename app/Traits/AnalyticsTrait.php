<?php

namespace App\Traits;

use dateTime;
use dateInterval;
use datePeriod;

trait AnalyticsTrait
{
    //requires the result of a query from getting the analytics scope in project model

    //return category id, name and count within a given project collection
    public function countCategoriesAndFeatures($proj){
        $categoryStats=collect([]);
        $featureStats=collect([]);
        foreach($proj->categories as $category){
            //collect stats on all features for this category
            foreach($category->features as $feature){
                $featureStat['id']=$feature->id;
                $featureStat['category_id']=$category->id;
                $featureStat['name']=$feature->name;
                $featureStat['count']=$feature->interviews->count();
                //store the result as collection
                $featureStats->push(collect($featureStat));
            }
            //collect stats on this category
            $categoryStat['id']=$category->id;
            $categoryStat['name']=$category->name;
            $categoryStat['count']=$featureStats->where('category_id',$category->id)->pluck('count')->sum();
            $categoryStats->push(collect($categoryStat));
        }
        $output['categoryStats']=$categoryStats;
        $output['featureStats']=$featureStats;
        return $output;
    }

    public function countInterviews($proj, $start,$stop){
        
        $formattedStart=(new dateTime)->setTimestamp(strtotime('last Sunday', $start->getTimestamp()));
        $formattedStop = $stop;
        $interval = new DateInterval('P7D');
        $daterange = new DatePeriod($formattedStart, $interval ,$formattedStop);

        $output=collect([]);
        foreach($daterange as $date){
            $rangeStart=$date;
            $rangeStop=(clone $date)->add($interval);
            $outputElement['rangeStart']=$rangeStart;
            $outputElement['rangeStop']=$rangeStop;
            $outputElement['label']=$rangeStart->format('Y-m-d').' to '.$rangeStop->format('Y-m-d');
            $outputElement['count']=$proj->interviews->where('date','>=',$rangeStart)->where('date','<',$rangeStop)->count();
            $output->push(collect($outputElement));
        }
        return $output;
    }        

}

?>