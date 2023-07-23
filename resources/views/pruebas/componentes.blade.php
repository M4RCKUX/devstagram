@extends('layouts.app')

@section('titulo')
  Página de pruebas
@endsection

@section('contenido')
<form action="">
  <x-form-input>
    <x-slot:label>Nombre</x-slot:label>
    <x-slot:type>text</x-slot:type>
    <x-slot:field_name>name</x-slot:field_name>
    <x-slot:placeholder>Tu nombre</x-slot:placeholder>  
  </x-form-input>
</form>
@endsection