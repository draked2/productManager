@extends('layouts.app')

@section('main-content')
	<div class="container-fluid spark-screen">
		<div class="row">
			<div class="col-md-12">

				<!-- Default box -->
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">{{$moduleName}}</h3>

					</div>
					<?php
						//if variable is set, program it accordingly
						
						if(isset($contacts)){$contactOptions=$contacts;}
						else{$contactOptions=[];}
						if(isset($projectfeatureList)){$featureOptions=$projectfeatureList;}
						else{$featureOptions=[];}

						if(isset($interview)){
							$id=$interview->id;
							$notes=$interview->notes;
							$date=$interview->date;
							$selectedContacts=$interview->contacts->pluck('name')->toArray();
							$selectedFeatures=$interview->features->pluck('name')->toArray();
							$selectedContactsId=[];
							$selectedFeaturesId=[];
							foreach($selectedContacts as $contact){
								if($val=array_search($contact,$contactOptions))
								{
									array_push($selectedContactsId,$val);
								}
							}
							foreach($selectedFeatures as $feature){
								if($val=array_search($feature,$featureOptions))
								{
									array_push($selectedFeaturesId,$val);
								}
							}
							//dd($selectedContactsId);
						}
						else
						{
							$id=0;
							$notes='';
							$date=\Carbon\Carbon::now();
							$selectedContactsId=[];
							$selectedFeaturesId=[];
						}

					?>
					<div class="box-body">
					{{Form::open(['url'=>'interviews/store'])}}
					{{Form::hidden('id', $id)}}

					<div class="col-md-5">
						<div class="col-md-3">
						<a class="btn btn-default btn-close" href="{{ URL::previous() }}">Cancel</a>
						</div>
						<div class="col-md-9">
						{{Form::submit('Save',['class'=>'btn btn-primary form-control','style'=>"margin-bottom: 10px;"])}}
						</div>
						<div class="col-md-3">
						{{Form::label('date','Date: ')}}
						</div>
						<div class="col-md-9 control-group">
						{{Form::date('date', $date,['style'=>"width: 200px;margin-bottom: 10px;"])}}
						</div>
						
						<div class="col-md-3">
						{{Form::label('features','Features: ')}}
						</div>
						<div class="col-md-9 control-group">
						{{ Form::select('features[]', $featureOptions,$selectedFeaturesId,['multiple'=>'multiple',
																						'id'=>'contacts',
																						'style'=>"width: 200px;height: 100px;margin-bottom: 10px;"
																						]) }}
						</div>

						<div class="col-md-3">
						{{Form::label('contacts','Contacts: ')}}
						</div>
						<div class="col-md-9 control-group">
						{{ Form::select('contacts[]', $contactOptions,$selectedContactsId,['multiple'=>'multiple',
																						'id'=>'contacts',
																						'style'=>"width: 200px;height: 100px;margin-bottom: 10px;"
																						]) }}
						</div>
                    </div>

					<div class="col-md-7">
						<div class="col-md-12">
						{{Form::label('notes','Notes: ',['style'=>'margin-top:15px;'])}}
						</div>
						<div class="col-md-12">						
						{{Form::textarea('notes',$notes,['style'=>"width:100%"])}}
						</div>
                    </div>
					
					{{Form::close()}}
						
                        
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

			</div>
		</div>
	</div>
@endsection

@section('additionalScripts')


@endsection
