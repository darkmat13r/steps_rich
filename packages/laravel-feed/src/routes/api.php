<?php


Route::group(['prefix' => 'api', 'middleware' =>'auth:api'], function(){
    Route::get('feed', [\LaravelFeed\Controllers\FeedController::class,"getAll"]);
    Route::post('feed', [\LaravelFeed\Controllers\FeedController::class,"create"]);
    Route::post('feed/{id}', [\LaravelFeed\Controllers\FeedController::class,"update"]);
    Route::get('feed/{id}', [\LaravelFeed\Controllers\FeedController::class,"get"]);
    Route::delete('feed/{id}', [\LaravelFeed\Controllers\FeedController::class,"delete"]);


    Route::post('feed/{id}/like', [\LaravelFeed\Controllers\FeedLikeController::class,"like"]);
    Route::post('feed/{id}/comment', [\LaravelFeed\Controllers\FeedCommentsController::class,"create"]);
    Route::get('feed/{id}/comment', [\LaravelFeed\Controllers\FeedCommentsController::class,"getAll"]);
});

