@extends('layout')

@section('title', 'View Users')

@section('users')
    <div id='users'>
        <users-component :data="{{ $data }}"></users-component>
    </div>
@endsection