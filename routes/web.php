<?php

use Intervention\Image\Facades\Image;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/banner/image', function () {
    $assetPath = public_path("images/bg-cta.jpg");

    return Image::make($assetPath)->response();
});
