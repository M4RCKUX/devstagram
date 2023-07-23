<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')
            ->except(['create', 'store']);
    }


    public function create()
    {
        return view('auth.register');
    }

    public function store(StoreUserRequest $request)
    {
        User::create(
            [
                'name' => $request->name,
                'username' => $request->username,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'image' => $request->image
            ]
        );


        Auth::attempt($request->only(['username', 'password']));

        return redirect()->route('posts.index', auth()->user()->username);

    }

    public function edit(User $user)
    {
        return view('auth.edit', ['user' => $user]);
    }

    public function update(UpdateUserRequest $request, User $user)
    {

        $user->update([
            'name' => $request->name,
            'username' => $request->username,
            'email' => $request->email,
            'image' => $request->image
        ]);
        
        return redirect()->route('posts.index', $user);

    }
}

