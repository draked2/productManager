@extends('layouts.errors')

@section('htmlheader_title')
    {{ trans('adminlte_lang::message.pagenotfound') }}
@endsection

@section('main-content')

    <div class="error-page">
        <div class="error-content">
            <h3><i class="fa fa-exclamation-triangle text-yellow"></i> Oops! Page not found</h3>
            <p>
                404 error
            </p>
            
        </div><!-- /.error-content -->
    </div><!-- /.error-page -->
@endsection