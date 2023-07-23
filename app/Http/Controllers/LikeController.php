<?php

namespace App\Http\Controllers;

use App\Models\Like;
use App\Models\Post;
use Illuminate\Http\Request;

class LikeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');        
    }


    public function store(Post $post)
    {
        Like::firstOrCreate([
            'user_id' => auth()->user()->id,
            'post_id' => $post->id
        ]);

        return back();
    }

    public function destroy(Post $post)
    {
        $like = Like::where('user_id', auth()->user()->id)
            ->where('post_id', $post->id)
            ->first();
        if($like) {
            $like->delete();
        }

        return back();
    }
}
