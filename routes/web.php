<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/test','analysisController@test');
Route::get('/','analysisController@show');
Route::get('/analysis','analysisController@show');
Route::post('/analysis/getData','analysisController@getData');
Route::get('/analysis/getData','analysisController@getData');
Route::post('/analysis/getCategoryData','analysisController@getCategoryData');
Route::get('/analysis/getCategoryData','analysisController@getCategoryData');

Route::get('/projects','projectController@index');
Route::get('/projects/destroy/{id}','projectController@destroy');
Route::get('/projects/update/{id}','projectController@update');
Route::post('/projects/store','projectController@store');
Route::post('/projects/create','projectController@create');





Route::get('/interviews','interviewController@index');
Route::get('/interviews/destroy/{id}','interviewController@destroy');
Route::get('/interviews/update/{id}','interviewController@update');
Route::post('/interviews/store','interviewController@store');
Route::post('/interviews/create','interviewController@create');

Route::group(['middleware' => 'auth'], function () {
    //    Route::get('/link1', function ()    {
//        // Uses Auth Middleware
//    });

    //Please do not remove this if you want adminlte:route and adminlte:link commands to works correctly.
    #adminlte_routes
});
