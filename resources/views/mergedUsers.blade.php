@extends('layout')

@section('mergedUsers')
    <div id='mergedUsers'>
        <mergedusers-component :data="{{$data}}"></mergedusers-component>
    </div>
@endsection