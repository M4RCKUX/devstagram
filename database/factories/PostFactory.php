<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        return [
            'titulo' => fake()->sentence(5),
            'descripcion' => fake()->sentence(20),
            'image' => 'sample-images/' . fake()->numberBetween(1,20) . '.jpg',
            'user_id' => User::inRandomOrder()->first()->id
        ];
    }
}
