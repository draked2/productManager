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
						<div class="pull-right">
						<a class="btn btn-primary" href="{{ url('/projects/create') }}">Add Interview</a>
                        </div>
                        <div>
                        <table style="width:100%" class="dataTable">
                        <thead>
                            <tr>
                                <th>Tools</th>
                                <th nowrap="nowrap">Name </th> 
                                <th>Description</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($projects as $project)
                        <tr>
                            <td><a  href="{{ url('/projects/update/'.$project->id) }}" class='fa fa-edit'></a></td>
                            <td>{{$project->name}}</td> 
                            <td nowrap="nowrap">
                                @if(strlen($project->description)>33)
                                    {{substr($project->description,0,30)."..."}}
                                @else
                                    {{$project->description}}
                                @endif
                                </td>
                            <td><a href="{{ url('/projects/destroy/'.$project->id) }}" class='fa fa-trash-o'></a></td>
                        </tr>
                        @endforeach
                        </tbody>
                        </table>
                    </div>
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
