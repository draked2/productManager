<?php

use Faker\Generator as Faker;

$factory->define(App\featureInterview::class, function (Faker $faker) {
    return [
        'feature_id'=> random_int(\DB::table('features')->min('id'), \DB::table('features')->max('id')),        
        'interview_id'=> random_int(\DB::table('interviews')->min('id'), \DB::table('interviews')->max('id')),        
    ];
});
