<?php


namespace LaravelFeed\Models;


use App\Models\User;
use Illuminate\Database\Eloquent\Model;

class FeedLike extends Model
{

    function feed(){
        return $this->belongsTo(Feed::class, 'feed_id','id');
    }

    function user(){
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

}
