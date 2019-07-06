<?php

use Intervention\Image\Facades\Image;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/terms', function () {
    return view('terms');
});

Route::get('/invite/{user_id}/{mobile}', function ($user_id, $mobile) {
    return redirect("https://api.pauzr.com/api/invite/$user_id/$mobile");
});

Route::get('/privacy', function () {
    return view('privacy');
});

Route::get('/banner/image', function () {
    $assetPath = public_path("images/bg-cta.jpg");

    return Image::make($assetPath)->response();
});
