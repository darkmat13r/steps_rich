<?php


namespace LaravelFeed\Controllers;


use App\Exceptions\GeneralException;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use LaravelFeed\Helpers\JsonResponse;
use LaravelFeed\Models\Feed;
use LaravelFeed\Models\FeedComment;

class FeedCommentsController extends Controller
{


    function getAll($feedId)
    {
        $comments = FeedComment::where('feed_id', $feedId)->with([
            'user' => function ($query) {
                $query->select('id', 'name');
            }
        ]);
        return JsonResponse::success($comments->paginate());
    }

    function create(Request  $request, $feedId){
        $validator = Validator::make($request->all(), [
            'comment' => 'required'
        ]);
        if($validator->fails()){
            return JsonResponse::fail($validator->errors()->first());
        }

        $feed = Feed::find($feedId);
        if(!$feed){
            throw new GeneralException("Feed not found");
        }
        $comment = (new FeedComment());
        $comment->forceFill([
            'comment' => $request->get('comment'),
            'user_id' => Auth::id(),
            'feed_id' => $feedId
        ]);
        $comment->save();
        return JsonResponse::success($comment);
    }
}
