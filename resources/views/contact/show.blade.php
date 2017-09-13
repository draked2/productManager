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
						<a class="btn btn-primary" href="{{ url('/contacts/create') }}">Add Contact</a>
                        </div>
                        <br>
                        <div>
                        <table style="width:100%" class="dataTable">
                        <thead>
                            <tr>
                                <th>Tools</th>
                                <th>Name</th> 
                                <th>Phone</th> 
                                <th>Email</th> 
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($contacts as $contact)
                        <tr>
                            <td><a  href="{{ url('/contacts/update/'.$contact->id) }}" class='fa fa-edit'></a></td>
                            <td>{{$contact->name}}</td>
                            <td>{{$contact->phoneNumber}}</td>
                            <td>{{$contact->email}}</td>
                            <td><a href="{{ url('/contacts/destroy/'.$contact->id) }}" class='fa fa-trash-o'></a></td>
                        </tr>
                        @endforeach
                        </tbody>
                        </table>
                        <div>
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
