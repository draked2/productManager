@extends('layouts.app')


@section('main-content')
	<div class="container-fluid spark-screen">
		<div class="row">
			<div class="col-md-12">

				<!-- Default box -->
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">Configuration</h3>

						
					</div>
					<div class="box-body">
						<div class="col-md-12">
							<div class="col-md-4">
								{{Form::label('project','Project:')}}
								{{Form::select('project',$project,['class' => 'inputListener'])}}
							</div>
							<div class="col-md-4">
								{{Form::label('start','Start:')}}
								{{Form::date('start', \Carbon\Carbon::now()->subDays(30),['class' => 'inputListener'])}}
							</div>
							<div class="col-md-4">
								{{Form::label('stop','Stop:')}}
								{{Form::date('stop', \Carbon\Carbon::now(),['class' => 'inputListener'])}}
							</div>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">Category Breakdown</h3>

						
					</div>
					<div class="box-body">
						<div class="col-md-6">
							<div id="categoryContainer" style="min-width:310px;height:400px;max-width:600px;margin:0 auto"></div>
						</div>
						<div class="col-md-6">
							<table id='categoryTable' class="display" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>Name</th>
										<th>Count</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">Feature Breakdown</h3>

						
					</div>
					<div class="box-body">
						<div class="col-md-6">
							<div id="featureContainer" style="min-width:310px;height:400px;max-width:600px;margin:0 auto"></div>
						</div>
						<div class="col-md-6">
							<table id='featureTable' class="display" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>Name</th>
										<th>Count</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">Interview Performance</h3>

						
					</div>
					<div class="box-body">
						<div class="col-md-12">
							<div id="interviewContainer" style="min-width:310px;height:400px;max-width:600px;margin:0 auto"></div>
						</div>
				</div>
				<!-- /.box -->

			</div>
		</div>
	</div>
@endsection

@section('additionalScripts')
<script>
$( document ).ready(

	



	/*
	$('#categoryTable').dataTable( {
	"ajax": {
		"url": "{{url('/analysis/getData')}}",
		"type": "POST",
		"aoColumns": [
			{ mDataProp: 'Id' },
			{ mDataProp: 'Name' },
			{ mDataProp: 'Count' }
			],
		"data":{
			"_token":"{{csrf_token()}}",
		}
	}})
	*/
)
</script>

<script>

function updateAnalytics() {
id=$('#project').val()
start=$('#start').val()
stop=$('#stop').val()
$.ajax({
		"url": "{{url('/analysis/getData')}}",
		"type": "POST",
		
		"data":{
			"_token":"{{csrf_token()}}",
			"id":id,
			"start":start,
			"stop":stop,
		},
		"success": function(result){
			category=result['categoryStats']
			feature=result['featureStats']
			interview=result['interviewCount']

			updateDatatable('#categoryTable',category)
			updatePieChart('categoryContainer','Categories',category)

			updateDatatable('#featureTable',feature)
			updatePieChart('featureContainer','Features',feature)

			updateBarGraph('interviewContainer', 'Weekly Interviews Conducted',interview)
			}
		
	});
}

function updateDatatable(divId,data) {
	 $(divId).DataTable( {
		"data": data,
        "columns": [
            { "data": "name" },
            { "data": "count" },
        ],
		 scrollY:        '300',
            deferRender:    true,
            scroller:       true,
            "lengthChange": false,
            drawCallback: function(settings) {
                var pagination = $(this).closest('.dataTables_wrapper').find('.dataTables_paginate');
                pagination.hide();
                //hacky way of getting the searchbar to the left by finding the half 
                //column element and pulling it right
                $('.dataTables_filter').parent().prev().addClass('pull-right');
                //force css of table
                $("tr:even").css("background-color", "#F0F8FF")
                $("th").css("background-color", "#E6E6FA")
            }
    } );
}

function updatePieChart(divId, text, data) {
	//prepare the series using the data
	//seriesData=toObject(data);
	seriesData=[]
	data.forEach(function(element){
		Object.defineProperty(element, 'y', Object.getOwnPropertyDescriptor(element, 'count'));
		seriesData.push(element);
	})
	Highcharts.chart(divId, {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: text
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
    series: [{
        name: 'Categories',
        colorByPoint: true,
        data: data
    }]
})}

function toObject(arr) {
  var rv = {};
  for (var i = 0; i < arr.length; ++i)
    rv[i] = arr[i];
  return rv;
}

function updateBarGraph(divId, title,data){
	Highcharts.chart(divId, {
    chart: {
        type: 'column'
    },
    title: {
        text: title
    },
    
    xAxis: {
        categories: data.map(function(a) {return a.label;}),
        crosshair: true
    },
    tooltip: {
        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f} </b></td></tr>',
        footerFormat: '</table>',
        shared: true,
        useHTML: true
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: 'This Project',
        data: data.map(function(a) {return a.count;}),

    }, ]
});
}
$( document ).ready(function() {
	updateAnalytics();
	$('.inputListener').change(function() {updateAnalytics()});
})

//# sourceURL=analysis.js

</script>

@endsection
