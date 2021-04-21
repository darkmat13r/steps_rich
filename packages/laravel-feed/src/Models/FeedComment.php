<?php


namespace LaravelFeed\Models;


use App\Models\User;
use Illuminate\Database\Eloquent\Model;

class FeedComment extends Model
{

    protected $fillable = [
        'user_id', 'feed_id', 'comment',
    ];

    function feed(){
        return $this->belongsTo(Feed::class, 'feed_id','id');
    }

    function user(){
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    function scopeLatest($query){
        return $query->where('updated_at', 'DESC');
    }
}
