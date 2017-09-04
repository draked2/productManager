<?php

use Illuminate\Database\Seeder;
use App\organization;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $post = organization::create(array(
            'name'=>'Acme Corporation'
        ))->save();
    }
}
