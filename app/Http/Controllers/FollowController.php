<?php

namespace App\Http\Controllers;

use App\Models\Follow;
use App\Models\User;
use Illuminate\Http\Request;

class FollowController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function store(User $user)
    {
        Follow::firstOrCreate([
            'follower_id' => auth()->user()->id,
            'followed_id' => $user->id
        ]);

        return back();
    }

    public function destroy(User $user)
    {
        $follow = Follow::where('follower_id', auth()->user()->id)
                        ->where('followed_id', $user->id)
                        ->first();
        
        if ($follow) {
            $follow->delete();
        }

        return back();
                
    }
}
