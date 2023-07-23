<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Comment;
use App\Models\Follow;
use App\Models\Like;
use App\Models\Post;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        User::factory()->create([
            'name' => 'Marcos Salinas',
            'username' => 'Marckux',
            'email' => 'marcossalinasizquierdo@gmail.com',
            'password' =>'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'email_verified_at' => now(),
            'remember_token' => Str::random(10)
        ]);
        User::factory(8)->create();
        Post::factory(100)->create();
        User::factory(1)->create();
        Comment::factory(20)->create();
        for ($i=0; $i < 80; $i++) { 
            Like::factory()->create();
        }
        for ($i=0; $i < 10; $i++) { 
            Follow::factory()->create();
        }
        
    }
}
