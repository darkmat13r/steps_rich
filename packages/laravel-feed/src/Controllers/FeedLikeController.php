<?php


namespace LaravelFeed\Controllers;


use App\Exceptions\GeneralException;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use LaravelFeed\Helpers\JsonResponse;
use LaravelFeed\Models\Feed;
use LaravelFeed\Models\FeedLike;
use LaravelFeed\Repositories\FeedRepository;

class FeedLikeController extends Controller
{

    private  $feedRepository;

    /**
     * FeedLikeController constructor.
     */
    public function __construct()
    {
        $this->feedRepository = new FeedRepository();
    }
    function like($feedId){
        $feed = Feed::find($feedId);
        if(!$feed){
            throw new GeneralException("Feed not found");
        }
        $exists = FeedLike::where('user_id', Auth::id())->where('feed_id', $feedId)->first();
        if($exists){
           $exists->delete();
        }else{
            (new FeedLike())->forceFill([
                'user_id' => Auth::id(),
                'feed_id' => $feedId
            ])->save();
        }
        return JsonResponse::success( $this->feedRepository->findById($feedId));
    }
}
