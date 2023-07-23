<?php

use App\Http\Controllers\CommentController;
use App\Http\Controllers\FollowController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ImagesController;
use App\Http\Controllers\LikeController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\UserController;
use App\Models\User;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/pruebas', function(){
    return view('pruebas.componentes');
});

Route::get('/', HomeController::class)->name('home');

Route::get('/crear-cuenta', [UserController::class, 'create'])
    ->name('user.create');

Route::post('/crear-cuenta', [UserController::class, 'store']);
    
Route::get('/login', [LoginController::class, 'index'])
    ->name('auth.login');

Route::post('/login', [LoginController::class, 'store']);

Route::post('/logout', [LoginController::class, 'logout'])
    ->name('auth.logout');

Route::get('/{user:username}', [PostController::class, 'index'])
    ->name('posts.index');

Route::get('/{user:username}/edit', [UserController::class, 'edit'])
    ->name('user.edit');

Route::patch('/{user:username}/edit', [UserController::class, 'update'])
    ->name('user.update');

Route::get('posts/create', [PostController::class, 'create'])
    ->name('posts.create');

Route::post('posts/create', [PostController::class, 'store']);

Route::post('/images', [ImagesController::class, 'store'])
    ->name('images.store');

Route::get('/{user:username}/posts/{post}', [PostController::class, 'show'])
    ->name('posts.show');

Route::post('/{user:username}/posts/{post}', [CommentController::class, 'store'])
    ->name('comments.store');

Route::delete('posts/{post}', [PostController::class, 'destroy'])
    ->name('posts.destroy');

Route::post('posts/{post}/likes', [LikeController::class, 'store'])
    ->name('posts.likes.store');

Route::delete('posts/{post}/likes', [LikeController::class, 'destroy'])
    ->name('posts.likes.destroy');

Route::post('follows/{user}', [FollowController::class, 'store'])
    ->name('follows');

Route::delete('follows/{user}', [FollowController::class, 'destroy']);