@extends('layout')

@section('title', 'Detect Duplicates')

@section('duplicateUsers')
    <div id='duplicateUsers'>
        <duplicateusers-component :id1="{{json_encode($final1)}}" :id2="{{json_encode($id2final)}}"></duplicateusers-component>
    </div>
@endsection