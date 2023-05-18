@extends('layout')

@section('users')
    <div id='users'>
        <users-component :data="{{ $data }}"></users-component>
    </div>
@endsection