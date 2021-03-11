<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\RewardSetting;
use Illuminate\Http\Request;

class RewardSettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = RewardSetting::all();
        return  view('admin.reward-setting.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return  view('admin.reward-setting.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'step_level'=>'required',
            'tree_level'=>'required',
            'reward'=>'required',
        ]);

        $data = new RewardSetting;
        $data->step_level = $request->step_level;
        $data->tree_level = $request->tree_level;
        $data->reward = $request->reward;
        $data->save();
        session()->flash('success_msg','Reward setting added successfully.');
        return redirect()->route('reward-setting.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = RewardSetting::find($id);
        return  view('admin.reward-setting.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'step_level'=>'required',
            'tree_level'=>'required',
            'reward'=>'required',
        ]);

        $data = RewardSetting::find($id);
        $data->step_level = $request->step_level;
        $data->tree_level = $request->tree_level;
        $data->reward = $request->reward;
        $data->save();
        session()->flash('success_msg','Reward setting updated successfully.');
        return redirect()->route('reward-setting.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        RewardSetting::find($id)->delete();
        return response()->json('success',200);
    }
}
