<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use App\Http\Requests\StorePostRequest;
use App\Http\Requests\DestroyPostRequest;
use App\Models\Comment;

class PostController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth')
            ->except(['index', 'show']);       
    }

    public function index(User $user) 
    {
        $posts = Post::where('user_id', $user->id)
            ->orderBy('created_at', 'desc')
            ->paginate(4);

        return view('posts.index', ['user' => $user, 'posts' => $posts]);
    }

    public function show(User $user, Post $post)
    {
        return view('posts.show', ['user' => $user, 'post' => $post]);
    }

    public function create()
    {
       return view('posts.create');
    }

    public function store(StorePostRequest $request)
    {
        Post::create([
            'titulo' => $request->titulo,
            'descripcion' => $request->descripcion,
            'image' => $request->image,
            'user_id' => auth()->user()->id
        ]);

        return redirect()->route('posts.index', auth()->user()->username);
    }

    public function destroy(DestroyPostRequest $request, Post $post)
    {
        $imgName = $post->image;
        $img_path = public_path('uploads/' . $imgName);


        $post->delete();

        if( !Str::of($imgName)->startsWith('sample-images')
            && !Post::where('image', $imgName)->first()
            && File::exists($img_path)) {

            unlink($img_path);
        }

        return redirect()->route('posts.index', auth()->user()->username);
    }



}
