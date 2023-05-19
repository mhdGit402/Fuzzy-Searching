@extends('layout')

@section('title', 'Merged Users')

@section('mergedUsers')
    <div id='mergedUsers'>
        <mergedusers-component :data="{{$data}}"></mergedusers-component>
    </div>
@endsection