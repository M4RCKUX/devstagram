@extends('layouts.app')

@section('titulo')
  Perfil: {{ $user->username }}
@endsection

@section('contenido')
  <div class="container flex flex-col items-center md:flex-row md:justify-center md:gap-10">

    <div class="w-1/3 mb-5">
      @if ($user->image != null)
        <img src="{{ asset('uploads') . '/' . $user->image  }}" alt="Imagen del usuario {{ $user->username }}">
      @else
        <img src="{{ asset('img/usuario.svg') }}" alt="El usuario {{ $user->username }} no tiene imagen">        
      @endif
    </div>

    <div>
      <div class="flex items-center gap-2">
        <h2 class="uppercase text-gray-700 font-bold">
          {{ $user->username }}
        </h2>
        <a href="{{ route('user.edit', $user) }}" class="text-">
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.0" stroke="currentColor" class="w-4 h-4">
            <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125" />
          </svg>
        </a>       
      </div>

      <p class="flex gap-2">
        <span class="font-bold">{{ $user->followers->count() }}</span>
        <span>@choice('Seguidor|Seguidores', $user->followers->count())</span></p>
      <p class="flex gap-2">
        <span class="font-bold">{{ $user->following->count() }}</span>
        <span>Siguiendo</span></p>
      <p class="flex gap-2">
        <span class="font-bold">{{ $user->posts->count() }}</span>
        <span>Posts</span></p>
      
      @auth
      @if ($user->id!=auth()->user()->id)

        <form method="post"
          action="{{ route('follows', $user) }}"
        >
        @php
          $following=$user->followers->contains(auth()->user());
          $color=$following? 'violet' : 'green';
        @endphp
        @csrf
        @if ($following)
          @method('DELETE')
        @endif
          <input
            type="submit"
            value="{{ $following? 'Dejar de Seguir':'Seguir' }}"
            class="bg-{{ $color }}-400  hover:bg-{{ $color }}-500 p-2 rounded-lg text-white text-sm mt-5 font-bold cursor-pointer"
          >      
        </form>

      @endif     
      @endauth


    </div>
    
  </div>

  <section class="container mx-auto flex flex-col items-center mt-10">
    <h2 class="text-3xl font-black my-10" >
      Publicaciones
    </h2>
    @if ($posts->count())
      <div class="p-2 grid md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
        @foreach ($posts as $post)
          <div>
            <a href="{{ route('posts.show', [$user, $post]) }}">
              <img src="{{ asset('uploads/' . $post->image)  }}" alt="Imagen del post {{ $post->titulo }}">
            </a>
          </div>        
          @endforeach
      </div>
      <div class="">
        {{ $posts->links() }}
      </div>       
    @else    
      <p> No hay posts publicados</p>  
    @endif
  </section>


@endsection