<div class="mb-5">
    <label for="{{ $name }}" class="block uppercase text-gray-500 mb-2">
      {{ $label }}
    </label>
    <input
      type="{{ $type }}"
      name="{{ $name }}"
      id="{{ $name }}"
      class="w-full border p-3 rounded-lg
        @if ($errorMessage)
        border-red-500           
        @endif 
        "
      placeholder="{{ $placeholder }}"
      value="{{ old($name) }}"
    >
    @if($errorMessage)
      <p class="bg-red-500 my-2 rounded-lg p-2 text-white text-sm text-center">{{ $errorMessage }}</p>          
    @endif
</div>