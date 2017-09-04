<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class MakePivotFeatureInterviewTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pivotFeatureInterviews', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('featureId')->unsigned();
            $table->foreign('featureId')->references('id')->on('features');
            $table->integer('interviewId')->unsigned();
            $table->foreign('interviewId')->references('id')->on('interviews');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pivotFeatureInterviews');
        
    }
}
