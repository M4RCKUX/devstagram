@extends('layouts.app')

@section('titulo')
  Editar perfil: {{ $user->username }}
@endsection

@section('contenido')

@push('styles')
  <link rel="stylesheet" href="https://unpkg.com/dropzone@5/dist/min/dropzone.min.css" type="text/css" />  
@endpush

<div
  class="container flex flex-col items-center md:flex-row md:justify-center md:gap-10"
>

  <div id='dropzone_container'
    class="w-1/3 mb-5 
      {{ $user->image? ' hidden': '' }}
    ">
    <form action="{{ route('images.store') }}" method="POST" enctype="multipart/form-data"
      id="dropzone"
      class="dropzone w-full h-96 border-dashed border-2 rounded-lg flex justify-center items-center"
    >@csrf
    </form>
  </div>

  <div id="image_container"
    class="w-1/3 mb-5 flex flex-col items-center
    {{ $user->image? '':' hidden' }}
  ">
    <img src="{{ asset('uploads') . '/' . $user->image  }}" alt="Imagen del usuario {{ $user->username }}">
    <button id="change_img" data-effect="change"
      class="text-sm bg-sky-600 hover:bg-sky-700 md:w-2/3 text-white uppercase font-bold rounded-lg p-2 cursor-pointer mt-4"
    >
      Cambiar imagen
    </button>
  </div>
  
  <div class="bg-white p-6 rounded-lg shadow-xl w-3/4 md:w-1/2 lg:w-4/12">
    <form method="POST" action="{{ route('user.update', $user) }}">
      @csrf
      @method('PATCH')
      <div class="mb-5">
        <label for="name" class="block uppercase text-gray-500 mb-2">
          Nombre
        </label>
        <input
          type="text"
          name="name"
          id="name"
          class="w-full border p-3 rounded-lg @error('name') border-red-500 @enderror"
          placeholder="Tu nombre"
          value="{{ old('name')? old('name') : $user->name }}">
        @error('name')
          <p class="bg-red-500 my-2 rounded-lg p-2 text-white text-sm text-center">{{ $message }}</p>          
        @enderror
      </div>
      <div class="mb-5">
        <label for="username" class="block uppercase text-gray-500 mb-2">
          Usuario
        </label>
        <input
          type="text"
          name="username"
          id="username"
          class="w-full border p-3 rounded-lg @error('username') border-red-500 @enderror"
          placeholder="Tu Nombre de Usuario"
          value="{{ old('username')? old('username') : $user->username }}">
          @error('username')
            <p class="bg-red-500 my-2 rounded-lg p-2 text-white text-sm text-center">{{ $message }}</p>          
          @enderror
      </div>
      <div class="mb-5">
        <label for="email" class="block uppercase text-gray-500 mb-2">
          E-mail
        </label>
        <input
          type="email"
          name="email"
          id="email"
          class="w-full border p-3 rounded-lg @error('email') border-red-500 @enderror"
          placeholder="Tu Email de Registro"
          value="{{ old('email')? old('email') : $user->email }}">
          @error('email')
            <p class="bg-red-500 my-2 rounded-lg p-2 text-white text-sm text-center">{{ $message }}</p>          
          @enderror
      </div>
      <div class="mb-5">
        <input type="hidden" name="image" id="image" value="{{ old('image')? old('image') : $user->image }}">
        @error('image')
          <p class="bg-red-500 my-2 rounded-lg p-2 text-white text-sm text-center">{{ $message }}</p>          
        @enderror
      </div>
      <input
        type="submit"
        value="Actualizar Datos"
        class="bg-sky-600 hover:bg-sky-700 w-full text-white uppercase font-bold rounded-lg p-2 cursor-pointer mt-4"
      > 
    </form>
  </div>
</div>

@vite('resources/js/dz.js')
@vite('resources/js/edit.js')
@endsection