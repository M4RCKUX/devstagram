@extends('layouts.app')

@section('titulo')
  Regístrate en DevStagram
@endsection

@section('contenido')

@push('styles')
  <link rel="stylesheet" href="https://unpkg.com/dropzone@5/dist/min/dropzone.min.css" type="text/css" />  
@endpush

<div class="md:flex md:items-center md:justify-center md:gap-3">

  <div class="mb-5 md:w-1/2 lg:w-6/12 p-2">
    <form action="{{ route('images.store') }}" method="POST" enctype="multipart/form-data"
      id="dropzone"
      class="dropzone w-full h-96 border-dashed border-2 rounded-lg flex justify-center items-center"
    >@csrf
    </form>
  </div>
  
  <div class="bg-white p-6 rounded-lg shadow-xl md:w-1/2 lg:w-4/12">
    <form method="POST">
      @csrf
      
      <x-form-input
        :name="'name'"
        :label="'Nombre'"
        :type="'text'"
        :placeholder="'Tu Nombre'"
        :errorMessage="$errors->first('name')"
      />

      <x-form-input
      :name="'username'"
      :label="'Usuario'"
      :type="'text'"
      :placeholder="'Tu Nombre de Usuario'"
      :errorMessage="$errors->first('username')"
    />

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

      <x-form-input
        :name="'password_confirmation'"
        :label="'Confirmación Password'"
        :type="'password'"
        :placeholder="'Repite tu password'"
        :errorMessage="$errors->first('password_confirmation')"
    />

      <div class="mb-5">
        <input type="hidden" name="image" id="image" value="{{ old('image') }}">
        @error('image')
          <p class="bg-red-500 my-2 rounded-lg p-2 text-white text-sm text-center">{{ $message }}</p>          
        @enderror
      </div>
      <input
        type="submit"
        value="Crear Cuenta"
        class="bg-sky-600 hover:bg-sky-700 w-full text-white uppercase font-bold rounded-lg p-2 cursor-pointer mt-4"> 
    </form>
  </div>
</div>

@vite('resources/js/dz.js')
@endsection