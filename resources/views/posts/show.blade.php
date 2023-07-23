@extends('layouts.app')

@section('titulo')
  {{ $post->titulo }}
@endsection

@section('contenido')
<div class="md:flex md:items-center md:justify-center md:gap-3">
    
  <div class="mb-5 md:w-1/2 lg:w-6/12 p-2">
    <img src="{{ asset('uploads/' . $post->image) }}" alt="Imagen del post {{ $post->titulo }}">
    <p class="my-4">
      {{ $post->descripcion }}
    </p>
    <!-- COMPONENTE DE LIVEWIRE -->
    <livewire:like-post
      :post="$post"
    />
    <!-- FIN COMPONENTE DE LIVEWIRE -->
    @auth
    @if ($post->user->id == auth()->user()->id)
    <form action="{{ route('posts.destroy', $post) }}" method="POST">
      @csrf
      @method('DELETE')
      <input type="submit" value="Borrar Publicación"
        class="confirmable bg-red-500 hover:bg-red-400 cursor-pointer rounded-lg text-white p-2 mt-5 font-bold"
        data-confirmation-message="Estás seguro de que quieres eliminar el post?"
      >
    </form>
    @endif      
    @endauth
  </div>

  <div class="bg-white p-6 rounded-lg shadow-xl md:w-1/2 lg:w-4/12">
    @auth
    @if (session('message'))
    <div class="uppercase font-bold bg-green-500 text-white text-center p-2 rounded-lg mb-6">
      <p>{{ session('message') }}</p>
    </div>      
    @endif
    <form action="{{ route('comments.store', [$user, $post]) }}" method="POST">
      @csrf
      <div class="mb-5">
        <label for="comentario" class="block uppercase text-gray-500 mb-2">
          Añade tu comentario
        </label>
        <textarea
          type="text"
          name="comentario"
          id="comentario"
          placeholder="Escribe aquí"
          class="w-full border p-3 rounded-lg @error('comentario') border-red-500 @enderror"
        >{{ old('comentario') }}</textarea>
          @error('comentario')
            <p class="bg-red-500 my-2 rounded-lg p-2 text-white text-sm text-center">{{ $message }}</p>          
          @enderror
      </div>
      <input
      type="submit"
      value="Comentar"
      class="bg-sky-600 hover:bg-sky-700 w-full text-white uppercase font-bold rounded-lg p-2 cursor-pointer mt-4">
    </form>
    @endauth

    <ul class="mt-5 max-h-96 overflow-y-scroll">
      @foreach ($post->comments as $comment)
        <li class="p-2 border-b">
          <a href=" {{ route('posts.index', $comment->user) }} " class="font-bold">{{ $comment->user->username }}</a>
          <p>{{ $comment->content }}</p>
          <p class="text-gray-500 text-sm">{{ $comment->created_at->diffForHumans() }}</p>
        </li>        
      @endforeach   
    </ul>

  </div>
</div>
<div class="container">

</div>
@endsection