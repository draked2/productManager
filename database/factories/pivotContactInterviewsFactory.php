<?php

use Faker\Generator as Faker;

$factory->define(App\contactInterview::class, function (Faker $faker) {
    return [
        'contact_id'=> random_int(\DB::table('contacts')->min('id'), \DB::table('contacts')->max('id')),
        'interview_id'=> random_int(\DB::table('interviews')->min('id'), \DB::table('interviews')->max('id')),        
    ];
});
