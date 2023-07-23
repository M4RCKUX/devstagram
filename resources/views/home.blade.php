@extends('layouts.app')
@section('titulo')
Página Principal
@endsection
@section('contenido')

<section class="container mx-auto flex flex-col items-center mt-10">
  <h2 class="text-3xl font-black my-10" >
    Publicaciones
  </h2>
  @if ($posts->count())
    <div class="p-2 grid md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
      @foreach ($posts as $post)
        <div>
          <a href="{{ route('posts.show', [$post->user, $post]) }}">
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