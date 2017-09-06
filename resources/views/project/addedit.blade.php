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
						<div class="col-md-12 control-group">
							<table id="categoryTable" class="display" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th hidden>deletionFlag</th>
										<th>Category</th>
										<th>Features</th>
										<th class='pull-right'>Delete</th>
									</tr>
								</thead>
									<tr id='template' class='categoryRow' categoryId=0 hidden>
										<td hidden>{{Form::number('deleteFlag[0]',0)}}</td>
										<td>{{Form::text('category[0]','')}}</td>
										<td>{{Form::text('features[0]',"")}}</td>
										<td><a class='del fa fa-trash-o pull-right' onclick="deleteRow(this)"></a></td>
									</tr>
								@if(isset($project))
									@foreach($project->categories as $category)
										<tr class='categoryRow' categoryId="{{$category->id}}">
											<td hidden>{{Form::number('deleteFlag['.$category->id.']',0)}}</td>
											<td>{{Form::text('category['.$category->id.']',$category->name)}}</td>
											<td>
											{{ Form::text('features['.$category->id.']',
															implode(',',$category->features->pluck('name')->toArray()),
															['class'=>'featureList']
											)}}
											</td>
											<td><a class='del fa fa-trash-o pull-right' onclick="deleteRow(this)"></a></td>
										</tr>
									@endforeach
								@endif
							</table>
							<div class="col-md-1 offset-md-11 pull-right">
								<td><a id='addAnotherRow' class='fa fa-plus-square-o fa-3x'></a></td>
							</div>
							<br>
						</div>
						<br><br><br>
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
<script>
function initializeFeatureTags(identifier){
	identifier.selectize({
    delimiter: ',',
    persist: false,
    create: function(input) {
        return {
            value: input,
            text: input
        }
    }
	});
}

function appendCategoryRow() {
	newRowId=Math.min.apply(null,$('.categoryRow').map(function(){return $(this).attr("categoryId");}).get())-1
	newRow=$('#template').clone()
	newRow.removeAttr('id')
	newRow.attr('categoryid',newRowId)
	newRowFeatureElement=newRow.find('[name^=featur]')
	newRowFeatureList=newRowFeatureElement.attr('name').replace('0',newRowId)
	newRow.find('[name^=feature]').attr('name',newRowFeatureList)
	newRowCategoryList=newRow.find('[name^=category]').attr('name').replace('0',newRowId)
	newRow.find('[name^=category]').attr('name',newRowCategoryList)
	newRowDeleteFlag=newRow.find('[name^=deleteFlag]').attr('name').replace('0',newRowId)
	newRow.find('[name^=delete]').attr('name',newRowDeleteFlag)

	$('#categoryTable').append(newRow)
	newRow.show()
	
	initializeFeatureTags(newRowFeatureElement)
}

function deleteRow(obj) {
	$(obj).parent().parent().find('[name^=deleteFlag]').val(1)
	$(obj).parent().parent().hide()
	console.log('here')
	
}

$( document ).ready(function() {
	initializeFeatureTags($('.featureList'))
	$('#addAnotherRow').click(function() {appendCategoryRow()})
	$('.del').click(function(){deleteRow()})
})

//# sourceURL=addeditProject.js
</script>

@endsection
