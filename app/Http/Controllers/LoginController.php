<?php

namespace App\Http\Controllers;

use App\Http\Requests\LoginRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('auth.login');   
    }
    
    public function store(LoginRequest $request)
    {
        if (auth()->attempt($request->only(['email', 'password']), $request->remember)) {

            return redirect()->route('posts.index', ['user' => auth()->user()->username]);

        } else {

            return back()->withErrors([
                'email' => 'Credenciales no válidas',
                'password' => 'Credenciales no válidas'
            ]);
        }        
    }

    public function logout()
    {
        auth()->logout();
        return redirect('/');
    }
}
