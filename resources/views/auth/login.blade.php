@extends('layouts.app')

@section('titulo')
  Inicia Sesión
@endsection

@section('contenido')
<div class="md:flex md:items-center md:justify-center md:gap-3">

  <div class="mb-5 md:w-1/2 lg:w-6/12 p-2">
    <img src="{{ asset('img/login.jpg') }}" alt="">
  </div>
  
  <div class="bg-white p-6 rounded-lg shadow-xl md:w-1/2 lg:w-4/12">
    <form method="POST">
      @csrf
      <x-form-input
        :name="'email'"
        :label="'Email'"
        :type="'email'"
        :placeholder="'Tu Email de Registro'"
        :errorMessage="$errors->first('email')"
      />

      <x-form-input
        :name="'password'"
        :label="'password'"
        :type="'password'"
        :placeholder="'Password de Registro'"
        :errorMessage="$errors->first('password')"
      />
      
      <div>
        <input type="checkbox" name="remember" id="remember">
        <label for="remember" class="text-sm text-gray-500 mb-2">
          Mantener la sesión iniciada
        </label>
      </div>
      <input
        type="submit"
        value="Iniciar Sesión"
        class="bg-sky-600 hover:bg-sky-700 w-full text-white uppercase font-bold rounded-lg p-2 cursor-pointer mt-4"> 
    </form>
  </div>
</div>
@endsection