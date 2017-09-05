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
					<div class="box-body">
						<div class="col-md-4">
							{{Form::label('project','Project:')}}
							{{Form::select('project',$project)}}
						</div>
						<div class="col-md-4">
							{{Form::label('start','Start:')}}
							{{Form::date('start', \Carbon\Carbon::now()->subDays(30))}}
						</div>
						<div class="col-md-4">
							{{Form::label('stop','Stop:')}}
							{{Form::date('stop', \Carbon\Carbon::now())}}
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

			</div>
		</div>
	</div>
@endsection
