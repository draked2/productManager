<?php

use Faker\Generator as Faker;

$factory->define(App\contact::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'phoneNumber'=> $faker->phoneNumber,
        'organization_id'=> random_int(\DB::table('organizations')->min('id'), \DB::table('organizations')->max('id')),
    ];
});
