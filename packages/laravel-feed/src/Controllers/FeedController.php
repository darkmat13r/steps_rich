<?php

namespace LaravelFeed\Controllers;

use App\Exceptions\GeneralException;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use LaravelFeed\Helpers\JsonResponse;
use LaravelFeed\Models\Feed;
use LaravelFeed\Models\FeedImage;

class FeedController extends \App\Http\Controllers\Controller
{


    function getAll(Request $request)
    {
        $feeds = (new Feed())
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
            ->with('images')
            ->paginate();
        return JsonResponse::success($feeds);
    }

    function get($id)
    {
        $feed = Feed::find($id);
        $feed->withCount('comments');
        $feed->withCount('likes');
        $feed->with([
            'user' => function ($query) {
                $query->select('id', 'name');
            }
        ]);
        $feed->images;
        return JsonResponse::success($feed);
    }

    function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'content' => ['required']
        ]);
        if ($validator->fails()) {
            return JsonResponse::fail($validator->errors()->first());
        }
        try {
            DB::beginTransaction();
            $feed = (new Feed());
            $feed->forceFill([
                'content' => $request->get('content'),
                'user_id' => Auth::id()
            ]);
            $feed->save();
            if ($request->hasFile('images')) {
                $images = $request->file('images');

                foreach ($images as $image) {
                    $path = Storage::put('uploads/images', $image);
                    (new FeedImage())->forceFill([
                        'feed_id' => $feed->id,
                        'url' => $path
                    ])->save();
                }
            }
            DB::commit();
            return $this->get($feed->id);
        } catch (\Exception $e) {
            DB::rollBack();
            throw new GeneralException($e->getMessage());
        }

    }


    function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'content' => ['required']
        ]);
        if ($validator->fails()) {
            return JsonResponse::fail($validator->errors()->first());
        }
        try {
            DB::beginTransaction();
            $feed = (new Feed());
            $feed->updateOrCreate([
                'id' => $id
            ], [
                'content' => $request->get('content'),
                'user_id' => Auth::id()
            ]);
            $feed->save();
            FeedImage::where('feed_id', $feed->id)->get();
            if ($request->has('images')) {
                $images = $request->file('images');
                foreach ($images as $image) {
                    $path = Storage::put('uploads/images', $image);
                    (new FeedImage())->forceFill([
                        'feed_id' => $feed->id,
                        'url' => $path
                    ])->save();
                }
            }
            DB::commit();
            return $this->get($feed->id);
        } catch (\Exception $e) {
            DB::rollBack();
            throw new GeneralException($e->getMessage());
        }

    }

    function delete($id)
    {
        Feed::where('id', $id)->delete();
        return JsonResponse::success();
    }
}
