<?php

use Faker\Generator as Faker;

$factory->define(App\interview::class, function (Faker $faker) {
    return [
        //'notes', 'date'
        'notes' => $faker->realText(),
        'date'=> $faker->dateTimeThisMonth()->format('Y-m-d H:i:s'),
        'created_at'=> $faker->dateTimeThisMonth()->format('Y-m-d H:i:s'),
        'project_id'=> random_int(\DB::table('projects')->min('id'), \DB::table('projects')->max('id')),                
    ];
});
