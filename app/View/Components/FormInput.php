<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class FormInput extends Component
{
    public $name;
    public $type;
    public $label;
    public $placeholder;
    public $errorMessage;
    /**
     * Create a new component instance.
     */
    public function __construct($name, $type, $label, $placeholder='', $errorMessage='')
    {
        $this->name = $name;
        $this->type = $type;
        $this->label = $label;
        $this->placeholder = $placeholder;
        $this->errorMessage = $errorMessage;
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.form-input');
    }
}
