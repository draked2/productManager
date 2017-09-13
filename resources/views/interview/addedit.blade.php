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
							$date=$interview->date->format('d-m-Y');
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
							$date=\Carbon\Carbon::now()->format('d-m-Y');
							$selectedContactsId=[];
							$selectedFeaturesId=[];
						}

					?>
					<div class="box-body">
					<div class='col-md-12'>
						<div class='col-md-1'>
						@if(isset($nextURL))
							<a  href="{{$nextURL}}">Next</a>
						@endif
						</div>
						<div class='offset-md-10'>
						</div>
						<div class='col-md-1 pull-right'>
						@if(isset($prevURL))
							<a  href="{{$prevURL}}">Previous</a>
						@endif
						</div>

					</div>

					<br>

					{{Form::open(['url'=>'interviews/store'])}}
					{{Form::hidden('id', $id)}}

					<div class="col-md-5" style="margin-top: 25px;">
						<div class="col-md-3">
						{{Form::label('project','Project: ')}}
						</div>
						<div class="col-md-9 control-group">
						{{Form::select('project', $projects,$selectedProject,['style'=>"width: 200px;margin-bottom: 10px;"])}}
						</div>
						<div class="col-md-3">
						{{Form::label('date','Date: ')}}
						</div>
						<div class="col-md-9 control-group">
						{{Form::text('date', $date,['class'=>'datepicker',
							'style'=>"width: 200px;margin-bottom: 10px;"])}}
						</div>
						
						<div class="col-md-3">
						{{Form::label('features','Features: ')}}
						</div>
						<div class="col-md-9 control-group">
						{{ Form::select('features[]', $featureOptions,$selectedFeaturesId,['multiple'=>'multiple',
																						'id'=>'features',
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
						<a class='fa fa-plus-square-o  fa-3x' data-toggle="modal" data-target="#myModal"></a>
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
					<div class="col-md-12">
						{{Form::submit('Save',['class'=>'btn btn-primary form-control','style'=>"margin-bottom: 10px;"])}}
					</div>
					<div class="col-md-12">
						<a class="btn btn-default btn-close" href="{{ URL::previous() }}" style='width:100%'>Cancel</a>
					</div>
					
					
					{{Form::close()}}
						
                        
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

			</div>
		</div>
	</div>


	<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Add Contact</h4>
      </div>
      <div class="modal-body">
			<p>New Name</p>
			<input id='newContactInput' type="text" name="name"><br>
			<!--
			<p>Email</p>
			<input id='newContactEmail' type="text" name="name"><br>
			<p>Phone Number</p>
			<input id='newContactPhone' type="text" name="name" onkeydown="javascript:backspacerDOWN(this,event);" onkeyup="javascript:backspacerUP(this,event);"><br>
			-->
	  </div>
      <div class="modal-footer">
        <button id='newContactButton' type="button" class="btn btn-default" data-dismiss="modal">Ok</button>
      </div>
    </div>

  </div>
</div>
@endsection

@section('additionalScripts')
<script>
function updateFeatures(){
	$.ajax({
		"url": "{{url('/interviews/loadFeatures')}}",
		"type": "POST",
		
		"data":{
			"_token":"{{csrf_token()}}",
			"id":$('#project').val(),
		},
		"success": function(result){
			$('#features')
				.find('option')
				.remove()

			for (var key in result) {
				$('#features').append(new Option(result[key],key))
			}
		}	
	});
}

function addContact(){
	//we flag new contacts in the front end with negative numbers. THe controller identifies new entries if
	//selected and stores them in the database (don't allow entries of 0)
	$('#contacts').append(new Option($('#newContactInput').val(),$('#newContactInput').val()))
}

$( document ).ready(function() {
	$('#project').change(function(){
		updateFeatures()
	})

	$('#newContactButton').click(function(){
		addContact()
	})

	//add summernotes compatibility
	$('[name=notes]').summernote({
		height:300,
	});

	$('.datepicker').datepicker({ format: 'dd-mm-yyyy' })
})
//# sourceURL=interviewAddedit.js
</script>

@endsection
