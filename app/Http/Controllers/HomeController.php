<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function __invoke()
    {
        $user = auth()->user();
        $id = $user? $user->id : null;
        $posts = Post::join('follows', 'followed_id', '=', 'user_id')
            ->select('posts.*')
            ->where('follower_id', $id)
            ->orderBy('posts.created_at', 'desc')
            ->paginate(8);

        return view('home', ['posts'=>$posts]);
    }
}
