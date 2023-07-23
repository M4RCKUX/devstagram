<?php

namespace Database\Factories;

use App\Models\User;
use App\Models\Follow;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Follow>
 */
class FollowFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        do {
            $users = User::inRandomOrder()->get();
            $follower = $users->first();
            $followed = $users->last();
        } while (Follow::where('follower_id', $follower->id)
                        ->where('followed_id', $followed->id)->exists());

        return [
            'follower_id' => $follower->id,
            'followed_id' => $followed->id            
        ];
    }
}
