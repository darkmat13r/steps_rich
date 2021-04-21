<?php


namespace LaravelFeed\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
class Feed extends Model
{
    protected $fillable = ['content', 'user_id', 'id'];

    function images(){
        return $this->hasMany(FeedImage::class, 'feed_id', 'id');
    }
    function image(){
        return $this->hasOne(FeedImage::class, 'feed_id', 'id');
    }
    function comments(){
        return $this->hasMany(FeedComment::class, 'feed_id', 'id');
    }
    function likes(){
        return $this->hasMany(FeedLike::class, 'feed_id', 'id');
    }
    function user(){
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
    function scopeLatest($query){
        return $query->where('updated_at', 'DESC');
    }
}
