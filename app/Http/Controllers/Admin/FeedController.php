<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use LaravelFeed\Models\Feed;
use LaravelFeed\Models\FeedComment;
use LaravelFeed\Models\FeedImage;
use Yajra\DataTables\Facades\DataTables;

class FeedController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.feed.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.feed.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'content' => 'required',
        ]);

        $user = Auth::user();

        $data = new Feed;
        $data->user_id = $user->id;
        $data->content = $request->content;
        $data->save();


        $image = new FeedImage;
        $image->feed_id = $data->id;
        if ($request->hasFile('url')) {
            $file = $request->file('url');
            $galfilename = 'image' . rand(999, 9999) . '.' . $file->getClientOriginalExtension();
            $galpath = $file->storeAs('uploads', $galfilename);
            $image->url = $galpath;
        }
        $image->save();
        session()->flash('success_msg', 'Fees added successfully.');
        return redirect()->route('feed.index');
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = FeedComment::join('users', 'users.id', 'feed_comments.user_id')
            ->select('feed_comments.*', 'users.name')->where('feed_id', $id)->get();
        return view('admin.feed.view', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Feed::find($id);
        $image = $data->image;
        return view('admin.feed.edit', compact('data','image'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'content' => 'required',
        ]);

        $data = Feed::find($id);
        $data->content = $request->content;
        $data->save();

        $image = FeedImage::where('feed_id',$id)->first();
        $image->feed_id = $data->id;
        if ($request->hasFile('url')) {
            $file = $request->file('url');
            $galfilename = 'image' . rand(999, 9999) . '.' . $file->getClientOriginalExtension();
            $galpath = $file->storeAs('uploads', $galfilename);
            $image->url = $galpath;
        }
        $image->save();
        session()->flash('success_msg', 'Feed updated successfully.');
        return redirect()->route('feed.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Feed::find($id);
        $data->delete();
        return response()->json('success', 200);
    }

    public function getData()
    {
        $query = FeedImage::join('feeds','feeds.id','feed_images.feed_id')
            ->leftjoin('users', 'users.id', 'feeds.user_id')
            ->select('feeds.*', 'users.name','feed_images.url');
        return DataTables::of($query)
            ->addIndexColumn()
            ->addColumn("DT_RowIndex", '')
            ->editColumn('user_name', function ($datatables) {
                return ucfirst($datatables->name);
            })
            ->editColumn('url', function ($datatables) {
                return '<img src=' . $datatables->url . ' border="0" width="100px" />';
            })
            ->addColumn('action', function ($datatables) {
                return '<a href="' . route('feed.edit', $datatables->id) . '" class="btn btn-primary btn-xs" title="Edit">
                            <i class="fa fa-edit"></i>
                        </a>
                        <a href="' . route('feed.show', $datatables->id) . '" class="btn btn-info btn-xs" title="View">
                            <i class="fa fa-eye"></i>
                        </a>
                        <button onclick="deleteIt(' . $datatables->id . ')" class="btn btn-danger btn-xs" title="Delete">
                            <i class="fa fa-trash"></i>
                        </button>';
            })
            ->rawColumns(['action','url','user_name'])->make(true);
    }
}
