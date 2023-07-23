<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCommentRequest;
use App\Models\Comment;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function store(StoreCommentRequest $request, User $user, Post $post)
    {
        Comment::create([
            'user_id' => auth()->user()->id,
            'post_id' => $post->id,
            'content' => $request->comentario
        ]);

        return back()->with('message', 'El comentario se ha publicado');
    }
}
