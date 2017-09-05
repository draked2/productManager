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
						
                        <table style="width:100%" class="dataTable">
                        <thead>
                            <tr>
                                <th>Tools</th>
                                <th nowrap="nowrap">Date</th>
                                <th>Names</th> 
                                <th nowrap="nowrap">Project</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($interviews as $interview)
                        <tr>
                            <td><a  href="{{ url('/interviews/update/'.$interview->id) }}" class='fa fa-edit'></a></td>
                            <td nowrap="nowrap">{{$interview->date->format('d-m-Y')}}</td>
                            <td>
                                @if(count($interview->contacts)==0)
                                    unspecified
                                @elseif (count($interview->contacts)==1)
                                    {{$interview->contacts->first()->name}}
                                @else
                                    <?php
                                    $contacts=$interview->contacts->sortBy('name');
                                    $firstContact=$contacts->shift();
                                    ?>
                                    {{$firstContact->name.", ".$contacts[0]->name}}
                                    {{--
                                    @foreach($contacts as $contact)
                                        {{", ".$contact->name}}    
                                    @endforeach
                                    --}}
                                @endif
                            </td> 
                            <td nowrap="nowrap">{{$interview->project->name}}</td>
                            <td><a href="{{ url('/interviews/destroy/'.$interview->id) }}" class='fa fa-trash-o'></a></td>
                        </tr>
                        @endforeach
                        </tbody>
                        </table>
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
