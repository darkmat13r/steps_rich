<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\HealthCondition;
use Illuminate\Http\Request;

class HealthConditionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = HealthCondition::all();
        return  view('admin.healthConditions.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return  view('admin.healthConditions.create');
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
            'name'=>'required',
            'require_addition_info'=>'required',
        ]);

        $data = new HealthCondition;
        $data->name = $request->name;
        $data->require_addition_info = $request->require_addition_info;
        $data->save();
        session()->flash('success_msg','Health condition added successfully.');
        return redirect()->route('health-conditions.index');
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
        $data = HealthCondition::find($id);
        return  view('admin.healthConditions.edit',compact('data'));
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
            'name'=>'required',
            'require_addition_info'=>'required',
        ]);

        $data = HealthCondition::find($id);
        $data->name = $request->name;
        $data->require_addition_info = $request->require_addition_info;
        $data->save();
        session()->flash('success_msg','Health condition updated successfully.');
        return redirect()->route('health-conditions.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        HealthCondition::find($id)->delete();
        return response()->json('success',200);
    }
}
