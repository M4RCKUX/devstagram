<?php

use App\Models\User;

require 'vendor/autoload.php';

// use Intervention\Image\ImageManagerStatic as Image;

// $files = glob('./public/uploads/sample-images/*.jpg');

// foreach ($files as $file) {
//   $image = Image::make($file);
//   $image->fit(1000, 1000);
//   $image->save($file);
// }

$user = User::all()->first();
var_dump($user);

?>
