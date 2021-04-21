<?php


namespace LaravelFeed\Models;


use Illuminate\Database\Eloquent\Model;

class FeedImage extends  Model
{

    function  getUrlAttribute($value){
        return asset('storage/'.$value);
    }
}
