@extends('admin.layout.app')
@push('title','Edit Level Requirement')
@push('headerscript')

@endpush
@section('content')
    <div class="subheader py-2 py-lg-6 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex align-items-center flex-wrap mr-1">
                <!--begin::Page Heading-->
                <div class="d-flex align-items-baseline flex-wrap mr-5">
                    <!--begin::Page Title-->
                    <h5 class="text-dark font-weight-bold my-1 mr-5">Edit Level Requirement</h5>
                    <!--end::Page Title-->
                </div>
                <!--end::Page Heading-->
            </div>
            <div class="d-flex align-items-center">
                <!--begin::Actions-->
                <a href="{{route('level-requirements.index')}}" class="btn btn-light-primary font-weight-bolder">
                    <i class="fas fa-backward"></i>
                    BACK
                </a>
                <!--end::Actions-->
            </div>
            <!--end::Info-->
        </div>
    </div>
    <!--end::Subheader-->
    <!--begin::Entry-->
    <div class="d-flex flex-column-fluid">
        <!--begin::Container-->
        <div class="container">
            <!--begin::Card-->
            <div class="card card-custom gutter-b">
                <form action="{{route('level-requirements.update', $data->id)}}" method="post" class="form">
                    @csrf
                    {{ method_field('PATCH') }}
                    <div class="card-header py-3">
                        <div class="row">
                            <div class="col-sm-8">
                                <h3 class="card-label font-weight-bolder text-dark py-3">Fill Details</h3>
                            </div>
                            <div class="col-sm-4 text-right">
                                <button type="submit" class="btn btn-success">Save</button>
                            </div>
                        </div>
                    </div>
                    <!--begin::Body-->
                    <div class="card-body">
                        <!--begin::Contact-->
                        <div class="form-group row">
                            <div class="col-sm-4 col-12">
                                <label for="">Activity Level :</label>
                                {!! Form::select('activity_level',[''=> 'Select Level','active'=> 'Active','inactive'=> 'In Active','moderate'=> 'Moderate'], old('activity_level', $data->activity_level), ['class'=>'form-control form-control-lg mb-2']) !!}
                                <div class="text-danger">{{$errors->first('name')}}</div>
                            </div>
                            <div class="col-sm-4 col-12">
                                <label for="">Level :<span class="text-danger">*</span></label>
                                <input type="text" name="level" value="{{old('level', $data->level)}}"
                                       class="form-control number" required>
                                <div class="text-danger">{{$errors->first('level')}}</div>
                            </div>
                            <div class="col-sm-4 col-12">
                                <label for="">Has Health Condition :<span class="text-danger">*</span></label>
                                <input type="text" name="has_health_condition" value="{{old('has_health_condition', $data->has_health_condition)}}"
                                       class="form-control mb-2 number" required>
                                <div class="text-danger">{{$errors->first('has_health_condition')}}</div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-3 col-12">
                                <label for="">Min Age :</label>
                                <input type="text" name="min_age" value="{{old('min_age', $data->min_age)}}"
                                       class="form-control number" >
                                <div class="text-danger">{{$errors->first('min_age')}}</div>
                            </div>
                            <div class="col-sm-3 col-12">
                                <label for="">Max Age :</label>
                                <input type="text" name="max_age" value="{{old('max_age', $data->max_age)}}"
                                       class="form-control number" >
                                <div class="text-danger">{{$errors->first('max_age')}}</div>
                            </div>
                            <div class="col-sm-3 col-12">
                                <label for="">Min Bmi :</label>
                                <input type="number" step="0.2" name="min_bmi" value="{{old('min_bmi', $data->min_bmi)}}"
                                       class="form-control" >
                                <div class="text-danger">{{$errors->first('min_bmi')}}</div>
                            </div>
                            <div class="col-sm-3 col-12">
                                <label for="">Max Bmi :</label>
                                <input type="number" step="0.2" name="max_bmi" value="{{old('max_bmi', $data->max_bmi)}}"
                                       class="form-control" >
                                <div class="text-danger">{{$errors->first('max_bmi')}}</div>
                            </div>
                        </div>
                        <br>
                        <br>
                        <div class="form-group row">
                            <div class="col-sm-2 col-12">
                                <label for="">Required Steps :</label>
                                <input type="text" name="required_steps" value="{{old('required_steps', $data->required_steps)}}"
                                       class="form-control number" >
                                <div class="text-danger">{{$errors->first('required_steps')}}</div>
                            </div>
                            <div class="col-sm-2 col-12">
                                <label for="">Required Repeat :</label>
                                <input type="text" name="required_repeat" value="{{old('required_repeat', $data->required_repeat)}}"
                                       class="form-control number" >
                                <div class="text-danger">{{$errors->first('required_repeat')}}</div>
                            </div>
                            <div class="col-sm-2 col-12">
                                <label for="">Required Period :</label>
                                <input type="text" name="required_period" value="{{old('required_period', $data->required_period)}}"
                                       class="form-control number" >
                                <div class="text-danger">{{$errors->first('required_period')}}</div>
                            </div>
                            <div class="col-sm-2 col-12">
                                <label for="">Required Cycle :</label>
                                <input type="text" name="required_cycle" value="{{old('required_cycle', $data->required_cycle)}}"
                                       class="form-control number" >
                                <div class="text-danger">{{$errors->first('required_cycle')}}</div>
                            </div>
                            <div class="col-sm-4 col-12">
                                <label for="">Required Repeat Interval :</label>
                                {!! Form::select('required_repeat_interval',[''=> 'Select Interval','day'=> 'Day','week'=> 'Week','month'=> 'Month','year'=> 'Year'], old('required_repeat_interval', $data->required_repeat_interval), ['class'=>'form-control mb-2']) !!}
                                <div class="text-danger">{{$errors->first('required_repeat_interval')}}</div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-2 col-12">
                                <label for="">Minimum Steps :<span class="text-danger">*</span></label>
                                <input type="text" name="minimum_steps" value="{{old('minimum_steps', $data->minimum_steps)}}"
                                       class="form-control number" required>
                                <div class="text-danger">{{$errors->first('minimum_steps')}}</div>
                            </div>
                            <div class="col-sm-2 col-12">
                                <label for="">Minimum Repeat :<span class="text-danger">*</span></label>
                                <input type="text" name="minimum_repeat" value="{{old('minimum_repeat', $data->minimum_repeat)}}"
                                       class="form-control number" required>
                                <div class="text-danger">{{$errors->first('minimum_repeat')}}</div>
                            </div>
                            <div class="col-sm-2 col-12">
                                <label for="">Minimum Period :<span class="text-danger">*</span></label>
                                <input type="text" name="minimum_period" value="{{old('minimum_period', $data->minimum_period)}}"
                                       class="form-control number" required>
                                <div class="text-danger">{{$errors->first('minimum_period')}}</div>
                            </div>
                            <div class="col-sm-2 col-12">
                                <label for="">Minimum Cycle :<span class="text-danger">*</span></label>
                                <input type="text" name="minimum_cycle" value="{{old('minimum_cycle', $data->minimum_cycle)}}"
                                       class="form-control number" required>
                                <div class="text-danger">{{$errors->first('minimum_cycle')}}</div>
                            </div>
                            <div class="col-sm-4 col-12">
                                <label for="">Minimum Repeat Interval :<span class="text-danger">*</span></label>
                                {!! Form::select('minimum_repeat_interval',[''=> 'Select Interval','day'=> 'Day','week'=> 'Week','month'=> 'Month','year'=> 'Year'], old('minimum_repeat_interval', $data->minimum_repeat_interval), ['class'=>'form-control mb-2','required']) !!}
                                <div class="text-danger">{{$errors->first('minimum_repeat_interval')}}</div>
                            </div>
                        </div>
                        <div class="text-right">
                            <button type="submit" class="btn btn-success">Save</button>
                        </div>
                        <!--end::Contact-->
                    </div>
                </form>
            </div>
            <!--end::Card-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Entry-->

@endsection
@push('footerscript')
    <script>
        $('.number').keyup(function (e) {
            if (/\D/g.test(this.value)) {
                this.value = this.value.replace(/\D/g, '');
            }
        });
    </script>
@endpush
