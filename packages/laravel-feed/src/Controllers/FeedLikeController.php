<?php


namespace LaravelFeed\Controllers;


use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use LaravelFeed\Helpers\JsonResponse;
use LaravelFeed\Models\FeedLike;

class FeedLikeController extends Controller
{

    function like($feedId){
        $exists = FeedLike::where('user_id', Auth::id())->where('feed_id', $feedId)->first();
        if($exists){
           $exists->delete();
        }else{
            (new FeedLike())->forceFill([
                'user_id' => Auth::id(),
                'feed_id' => $feedId
            ])->save();
        }
        return JsonResponse::success();
    }
}
