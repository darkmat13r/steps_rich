<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\LevelRequirement;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class LevelRequirementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = LevelRequirement::all();
        return  view('admin.levelRequirements.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return  view('admin.levelRequirements.create');
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
            'level' => 'required',
            'has_health_condition' => 'required',
            'minimum_steps' => 'required',
            'minimum_repeat' => 'required',
            'minimum_period' => 'required',
            'minimum_cycle' => 'required',
            'minimum_repeat_interval' => 'required',
        ]);

        $data = new LevelRequirement;
        $data->activity_level = $request->activity_level;
        $data->level = $request->level;
        $data->has_health_condition = $request->has_health_condition;
        $data->activity_level = $request->activity_level;
        $data->min_age = $request->min_age;
        $data->max_age = $request->max_age;
        $data->min_bmi = $request->min_bmi;
        $data->max_bmi = $request->max_bmi;
        $data->required_steps = $request->required_steps;
        $data->required_repeat = $request->required_repeat;
        $data->required_period = $request->required_period;
        $data->required_repeat_interval = $request->required_repeat_interval;
        $data->required_cycle = $request->required_cycle;
        $data->minimum_steps = $request->minimum_steps;
        $data->minimum_repeat = $request->minimum_repeat;
        $data->minimum_period = $request->minimum_period;
        $data->minimum_repeat_interval = $request->minimum_repeat_interval;
        $data->minimum_cycle = $request->minimum_cycle;
        $data->save();
        session()->flash('success_msg','Level requirement added successfully');
        return redirect()->route('level-requirements.index');
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
        $data = LevelRequirement::find($id);
        return  view('admin.levelRequirements.edit',compact('data'));
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
            'level' => 'required',
            'has_health_condition' => 'required',
            'minimum_steps' => 'required',
            'minimum_repeat' => 'required',
            'minimum_period' => 'required',
            'minimum_cycle' => 'required',
            'minimum_repeat_interval' => 'required',
        ]);

        $data = LevelRequirement::find($id);
        $data->activity_level = $request->activity_level;
        $data->level = $request->level;
        $data->has_health_condition = $request->has_health_condition;
        $data->activity_level = $request->activity_level;
        $data->min_age = $request->min_age;
        $data->max_age = $request->max_age;
        $data->min_bmi = $request->min_bmi;
        $data->max_bmi = $request->max_bmi;
        $data->required_steps = $request->required_steps;
        $data->required_repeat = $request->required_repeat;
        $data->required_period = $request->required_period;
        $data->required_repeat_interval = $request->required_repeat_interval;
        $data->required_cycle = $request->required_cycle;
        $data->minimum_steps = $request->minimum_steps;
        $data->minimum_repeat = $request->minimum_repeat;
        $data->minimum_period = $request->minimum_period;
        $data->minimum_repeat_interval = $request->minimum_repeat_interval;
        $data->minimum_cycle = $request->minimum_cycle;
        $data->save();
        session()->flash('success_msg','Level requirement updated successfully');
        return redirect()->route('level-requirements.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        LevelRequirement::find($id)->delete();
        return response()->json('success',200);
    }

    public function getData(){
        $query = LevelRequirement::get();
        return DataTables::of($query)
            ->addIndexColumn()
            ->addColumn('DT_RowIndex','')
            ->editColumn('activity_level', function ($datatables){
                return ucfirst($datatables->activity_level);
            })
            ->addColumn('action', function($datatables){
                return '<a href="'.route('level-requirements.edit', $datatables->id).'" class="btn btn-primary btn-sm" title="Edit">
                            <i class="fa fa-edit"></i>
                        </a>
                        <button onclick="deleteIt('.$datatables->id.')" class="btn btn-danger btn-sm" title="Delete">
                            <i class="fa fa-trash"></i>
                        </button>';
            })
            ->make(true);
    }
}
