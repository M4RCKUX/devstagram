<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'username',
        'image'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    /**
     * Relatioships
     */
    public function posts()
    {
        return $this->hasMany(Post::class);
    }

    public function likes()
    {
        return $this->belongsToMany(Post::class, Like::class);
    }

    public function followers()
    {
        return $this->belongsToMany(User::class, Follow::class, 'followed_id', 'follower_id');
    }

    public function following()
    {
        return $this->belongsToMany(User::class, Follow::class, 'follower_id', 'followed_id');
    }

    /**
     * Methods
     */

    
    
    public function follow(User $user) : Follow
    {
        return Follow::firstOrCreate([
            'follower_id' => $this->id,
            'followed_id' => $user->id
        ]);
    }

    public function unfollow(User $user) : bool
    {
        $follow = Follow::
                    where('follower_id', $this->id)
                  ->where('followed_id', $user->id)
                  ->first();
        if($follow) {
            return $follow->delete();
        } else {
            return false;
        }
    }

    public function like(Post $post) : Like
    {
        return Like::firstOrCreate([
            'user_id' => $this->id,
            'post_id' => $post->id]);
    }

    public function unlike(Post $post) : bool
    {
        $like = Like::
                    where('user_id', $this->id)
                  ->where('post_id', $post->id)
                  ->first();
        if($like) {
            return $like->delete();
        } else {
            return false;
        }
    }

}
