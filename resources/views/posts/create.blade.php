@extends('layouts.app')

@section('titulo')
    Crea una nueva Publicación
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
        :name="'titulo'"
        :label="'Título'"
        :type="'text'"
        :placeholder="'Título de la publicación'"
        :errorMessage="$errors->first('titulo')"
    />

      <div class="mb-5">
        <label for="descripcion" class="block uppercase text-gray-500 mb-2">
          Descripción
        </label>
        <textarea
          type="text"
          name="descripcion"
          id="descripcion"
          placeholder="Descripción de la Publicacion"
          class="w-full border p-3 rounded-lg @error('descripcion') border-red-500 @enderror"
        >
          {{ old('descripcion') }}
        </textarea>
          @error('descripcion')
            <p class="bg-red-500 my-2 rounded-lg p-2 text-white text-sm text-center">{{ $message }}</p>          
          @enderror
      </div>

      <div class="mb-5">
        <input type="hidden" name="image" value="{{ old('image') }}">
        @error('image')
          <p class="bg-red-500 my-2 rounded-lg p-2 text-white text-sm text-center">{{ $message }}</p>          
        @enderror
      </div>
      
      <input
      type="submit"
      value="Crear Publicación"
      class="bg-sky-600 hover:bg-sky-700 w-full text-white uppercase font-bold rounded-lg p-2 cursor-pointer mt-4">
    </form>
  </div>

  @vite('resources/js/dz.js')
@endsection