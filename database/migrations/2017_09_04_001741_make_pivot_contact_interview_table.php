<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class MakePivotContactInterviewTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pivotContactInterviews', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('contactId')->unsigned();
            $table->foreign('contactId')->references('id')->on('contacts');
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
        Schema::dropIfExists('pivotContactInterviews');
        
    }
}
