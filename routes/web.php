<?php

use Intervention\Image\Facades\Image;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/terms', function () {
    return view('terms');
});

Route::get('/privacy', function () {
    return view('privacy');
});

Route::get('/banner/image', function () {
    $assetPath = public_path("images/bg-cta.jpg");

    return Image::make($assetPath)->response();
});
