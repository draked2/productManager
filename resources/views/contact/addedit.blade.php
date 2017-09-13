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
						
						if(isset($contact)){
							$id=$contact->id;
							$name=$contact->name;
							$phoneNumber=$contact->phoneNumber;
							$email=$contact->email;
						}
						else
						{
							$id=0;
							$name='';
							$phoneNumber='';
							$email='';
						}
					?>
					<div class="box-body">
					
					<br>

					@if ($errors->any())
						<div class="alert alert-danger">
							<ul>
								@foreach ($errors->all() as $error)
									<li>{{ $error }}</li>
								@endforeach
							</ul>
						</div>
					@endif


					{{Form::open(['url'=>'contacts/store'])}}
					{{Form::hidden('id', $id)}}

					<div class="col-md-5" style="margin-top: 25px;">
						<div class="col-md-3">
						{{Form::label('name','Name: ')}}
						</div>
						<div class="col-md-9 control-group">
						{{Form::text('name', $name,['style'=>"width: 200px;margin-bottom: 10px;"])}}
						</div>
						<div class="col-md-3">
						{{Form::label('phoneNumber','Phone: ')}}
						</div>
						<div class="col-md-9 control-group">
						{{Form::text('phoneNumber', $phoneNumber,['onkeydown'=>'javascript:backspacerDOWN(this,event)',
															'onkeyup'=>'javascript:backspacerUP(this,event);',
															'style'=>"width: 200px;margin-bottom: 10px;"
															])}}
						</div>
						<div class="col-md-3">
						{{Form::label('email','Email: ')}}
						</div>
						<div class="col-md-9 control-group">
						{{Form::text('email', $email, ['style'=>"width: 200px;margin-bottom: 10px;"])}}
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


@endsection

@section('additionalScripts')


@endsection
