<?php
namespace LaravelFeed\Repositories;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use LaravelFeed\Models\Feed;

class FeedRepository
{

    function findById($id){
        $feed = (new Feed())
            ->where('id', $id)
            ->withCount([
                'comments',
                'likes',  'likes as liked' => function($query){
                    $query->where('user_id', Auth::id());
                }
            ])
            ->with([
                'user' => function ($query) {
                    $query->select('id', 'name');
                },

            ])
            ->with('images')->first();
        return $feed;
    }
}
