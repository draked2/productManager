<!-- REQUIRED JS SCRIPTS -->

<!-- JQuery and bootstrap are required by Laravel 5.3 in resources/assets/js/bootstrap.js-->
<!-- Laravel App -->
<script src="{{ url (mix('/js/app.js')) }}" type="text/javascript"></script>
<script src="{{ asset('/js/typeahead.jquery.js') }}" type="text/javascript"></script>
<script type="text/javascript" src="{{ asset('js/datatables.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/selectize.min.js') }}"></script>
{{--<script type="text/javascript" src="{{ asset('js/bootstrap-datepicker.min.js') }}"></script>--}}
 <script type="text/javascript" src="{{ asset('js/highcharts/highcharts.js') }}"></script>
 <script type="text/javascript" src="{{ asset('js/highcharts/modules/exporting.js') }}"></script>
 <script type="text/javascript" src="{{ asset('summernote/summernote.js') }}"></script>


<!-- Optionally, you can add Slimscroll and FastClick plugins.
      Both of these plugins are recommended to enhance the
      user experience. Slimscroll is required when using the
      fixed layout. -->
<script>
    window.Laravel = {!! json_encode([
        'csrfToken' => csrf_token(),
    ]) !!};
</script>
<!-- productResearcher modifications -->
<script>
//cleanup annoying Vue mesasages
Vue.config.devtools = false;
Vue.config.productionTip = false
</script>
    <script>
        $(document).ready(function() {
            //draw datatables
            $('.dataTable').DataTable({
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

            //draw calendars
            /*
            $("[type=date]").datepicker({
                changeMonth: true,
                changeYear: true
            });
           

  });
   */
            });
        } );

    //# sourceURL=filename.js
</script>