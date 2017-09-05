<?php

use Illuminate\Database\Seeder;
use App\organization;
use App\category;
use App\feature;
use App\interview;
use App\project;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //will use the faker later on while creating test data
        $faker = Faker\Factory::create();

        
        //make a new project 
        $proj=project::create(array(
            'name'=>"Amazing Widgit!",
            'description'=>"This is an amazing widgit that will blow everyone off the ground! The value proposition is to solve the painpoint of all consumers!",
        ));
        $proj->save();
        
        //make two new categories for this project
        $cat1=category::create(array(
            'name'=>"Software",
            'project_id'=>$proj->id,
        ));
        $cat1->save();
        
        $cat2=category::create(array(
            'name'=>"Hardware",
            'project_id'=>$proj->id,
        ));
        $cat2->save();
        //make some new features
        feature::create(array(
            'name'=>'Enhanced GUI',
            'category_id'=>$cat1->id
        ))->save();
        feature::create(array(
            'name'=>'Faster software',
            'category_id'=>$cat1->id
        ))->save();
        feature::create(array(
            'name'=>'Sleaker Exterior',
            'category_id'=>$cat2->id
        ))->save();
        feature::create(array(
            'name'=>'Runs cooler',
            'category_id'=>$cat2->id
        ))->save();
        //make one organization
        organization::create(array(
            'name'=>'Acme Corporation',
        ))->save();
            
        //make some dummy contacts
        $contacts = factory(App\contact::class, 25)->create();
        //make some dummy interviews
        $interviews = factory(App\interview::class, 50)->create();
        //link features to interviews
        $pivotFeatureInterviews = factory(App\featureInterview::class, 100)->create();
        //link features to interviews
        $pivotContactInterviews = factory(App\contactInterview::class, 150)->create();
        
    }
}
