<?php

namespace App\Http\Livewire;

use App\Models\Like;
use Livewire\Component;

class LikePost extends Component
{
    public $authorized;
    public $post;
    public $isLiked;
    public $nLikes;
    
    public $message;


    public function mount($post)
    {
        $this->authorized = auth()->user();
        $this->post = $post;
        $this->isLiked = $post->checkLike($this->authorized);
        $this->nLikes = $post->likes->count();

    }

    public function like()
    {
        if ($this->isLiked) {
            $this->authorized->unlike($this->post);
            $this->nLikes--;
        } else {
            $this->authorized->like($this->post);
            $this->nLikes++;
        }
        $this->isLiked = !$this->isLiked;       
    }

    public function render()
    {
        return view('livewire.like-post');
    }
}
