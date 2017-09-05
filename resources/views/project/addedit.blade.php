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
						if(isset($project)){
							$id=$project->id;
							$description=$project->description;
							$name=$project->name;
						}
						else
						{
							$id=0;
							$description="";
							$name="New Project";
						}

					?>
					<div class="box-body">
					{{Form::open(['url'=>'projects/store'])}}
					{{Form::hidden('id', $id)}}

					<div class="col-md-12">
						
						
						<div class="col-md-12">
						{{Form::label('name','Name: ')}}
						</div>
						<div class="col-md-12 control-group">
						{{Form::text('name', $name,['style'=>"width: 100%; margin-bottom: 10px;"])}}
						</div>
						<div class="col-md-12">
						{{Form::label('description','Description: ')}}
						</div>
						<div class="col-md-12 control-group">
						{{Form::textArea('description', $description,['style'=>"width: 100%; margin-bottom: 10px;"])}}
						</div>
						<div class="col-md-12">
						{{Form::submit('Save',['class'=>'btn btn-primary form-control','style'=>"margin-bottom: 10px;"])}}
						</div>
						<div class="col-md-12">
						<a class="btn btn-default btn-close" style="margin-bottom: 10px;width:100%" href="{{ URL::previous() }}">Cancel</a>
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
