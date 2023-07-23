<?php

namespace Database\Factories;

use App\Models\Like;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\QueryException;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Like>
 */
class LikeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
       do {
        $user = User::inRandomOrder()->first();
        $post = Post::inRandomOrder()->first();
       } while (Like::where('user_id', $user->id)->where('post_id', $post->id)->exists());

       return [
        'user_id' => $user->id,
        'post_id' => $post->id
       ];
    }
}
