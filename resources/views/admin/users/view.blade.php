@extends('admin.layout.app')
@push('title','View User')
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
                    <h5 class="text-dark font-weight-bold my-1 mr-5">User Details</h5>
                    <!--end::Page Title-->
                </div>
                <!--end::Page Heading-->
            </div>
            <div class="d-flex align-items-center">
                <!--begin::Actions-->
                <a href="{{url()->previous()}}" class="btn btn-light-primary font-weight-bolder">
                    <i class="fas fa-backward"></i>
                    Back
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
                <div class="card-body">
                    <!--begin::Details-->
                    <div class="d-flex mb-9">
                        <!--begin::Info-->
                        <div class="flex-grow-1">
                            <!--begin::Title-->
                            <div class="d-flex justify-content-between flex-wrap mt-1">
                                <div class="d-flex mr-3">
                                    <p class="text-dark-75 text-hover-primary font-size-h5 font-weight-bold mr-3 cursor-pointer">
                                        {{$data->name}}
                                    </p>
                                </div>
                                <div class="my-lg-0 my-3 text-center">
                                    <div class="d-flex">
                                        <span class="btn btn-danger font-weight-bolder text-uppercase">Level : {{$profileData->level}}</span>
                                        <span class="btn btn-dark font-weight-bolder text-uppercase ml-2">Reward Income : {{$data->rewards->sum('amount')}}</span>
                                    </div>
                                    <span>Last updated at : {{$profileData->level_last_updated_at}}</span>
                                </div>
                            </div>
                            <!--end::Title-->
                            <!--begin::Content-->
                            <div class="d-flex flex-wrap justify-content-between mt-1">
                                <div class="d-flex flex-column flex-grow-1 pr-8">
                                    <div class="d-flex flex-wrap mb-4">
                                        <p class="text-dark-50 text-hover-primary font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
                                            <i class="fa fa-envelope-open-text text-primary mr-2"></i>{{$data->email}}
                                        </p>
                                        <p class="text-dark-50 text-hover-primary font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
                                            <i class="fas fa-phone-alt text-primary mr-2 font-size-lg"></i>{{$data->country_code.' '.$data->phone}}
                                        </p>
                                        <p class="text-dark-50 text-hover-primary font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
                                            <i class="fa fa-building text-primary mr-2"></i>Bank Name : {{$bankDetails->bank_name}}
                                        </p>
                                        <p class="text-dark-50 text-hover-primary font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
                                            <i class="fas fa-user text-primary mr-2 font-size-lg"></i>Acc. Name : {{$bankDetails->account_name}}
                                        </p>

                                    </div>
                                </div>
                                <div class="d-flex flex-column flex-grow-1 pr-8">
                                    <div class="d-flex flex-wrap mb-4">
                                        <p class="text-dark-50 text-hover-primary font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
                                            <i class="fas fa-globe-americas text-primary mr-2 font-size-lg"></i>{{$data->country}}
                                        </p>
                                        <p class="text-dark-50 text-hover-primary font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
                                            <i class="fas fa-user text-primary mr-2 font-size-lg"></i>Referred By : {{$referredBy}}
                                        </p>
                                        <p class="text-dark-50 text-hover-primary font-weight-bold mr-lg-8 mr-5 mb-lg-0 mb-2">
                                            <i class="fas fa-table text-primary mr-2 font-size-lg"></i>Acc. No : {{$bankDetails->getRawOriginal('account_number')}}
                                        </p>
                                        <p class="text-dark-50 text-hover-primary font-weight-bold">
                                            <i class="fas fa-question text-primary mr-2 font-size-lg"></i>Acc. Type : {{$bankDetails->account_type}}
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!--end::Content-->
                        </div>
                        <!--end::Info-->
                    </div>
                    <!--end::Details-->
                    <div class="separator separator-solid"></div>
                    <!--begin::Items-->
                    <div class="d-flex align-items-center flex-wrap mt-8">
                        <!--begin::Item-->
                        <div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
                            <span class="mr-4">
                                <i class="fab fa-buffer text-danger"></i>
                            </span>
                            <div class="d-flex flex-column text-dark-75">
                                <span class="font-weight-bolder font-size-sm">Steps Goal</span>
                                <span class="font-weight-bolder font-size-h5">
                                    {{$data->steps_goal}}
                                </span>
                            </div>
                        </div>
                        <!--end::Item-->
                        <!--begin::Item-->
                        <div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
                            <span class="mr-4">
                                <i class="far fa-money-bill-alt text-danger"></i>
                            </span>
                            <div class="d-flex flex-column text-dark-75">
                                <span class="font-weight-bolder font-size-sm">Referral Code</span>
                                <span class="font-weight-bolder font-size-h5">
                                    {{$data->referral_code}}
                                </span>
                            </div>
                        </div>
                        <!--end::Item-->
                        <!--begin::Item-->
                        <div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
                            <span class="mr-4">
                                <i class="fas fa-calendar-alt text-danger"></i>
                            </span>
                            <div class="d-flex flex-column text-dark-75">
                                <span class="font-weight-bolder font-size-sm">Date of Birth</span>
                                <span class="font-weight-bolder font-size-h5">
                                    {{$data->dob}}
                                </span>
                            </div>
                        </div>
                        <!--end::Item-->
                        <!--begin::Item-->
                        <div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
                            <span class="mr-4">
                                <i class="fas fa-transgender-alt text-danger"></i>
                            </span>
                            <div class="d-flex flex-column text-dark-75">
                                <span class="font-weight-bolder font-size-sm">Gender</span>
                                <span class="font-weight-bolder font-size-h5">
                                    {{ucfirst($data->gender)}}
                                </span>
                            </div>
                        </div>
                        <!--end::Item-->
                        <!--begin::Item-->
                        <div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
                            <span class="mr-4">
                                <i class="fas fa-weight text-danger"></i>
                            </span>
                            <div class="d-flex flex-column text-dark-75">
                                <span class="font-weight-bolder font-size-sm">Weight</span>
                                <span class="font-weight-bolder font-size-h5">
                                    {{$data->weight}}
                                </span>
                            </div>
                        </div>
                        <!--end::Item-->
                        <!--begin::Item-->
                        <div class="d-flex align-items-center flex-lg-fill mr-5 mb-2">
                            <span class="mr-4">
                                <i class="fas fa-text-height text-danger"></i>
                            </span>
                            <div class="d-flex flex-column text-dark-75">
                                <span class="font-weight-bolder font-size-sm">Height</span>
                                <span class="font-weight-bolder font-size-h5">
                                    {{$data->height}}
                                </span>
                            </div>
                        </div>
                        <!--end::Item-->
                    </div>
                    <!--begin::Items-->
                </div>
            </div>
            <!--end::Card-->
            <!--begin::Row-->
            <div class="row">
                <div class="col-lg-6">
                    <!--begin::List Widget 11-->
                    <div class="card card-custom">
                        <!--begin::Header-->
                        <div class="card-header h-auto py-4 bg-primary-o-80">
                            <div class="card-title">
                                <h3 class="card-label">Level Requirements</h3>
                            </div>
                        </div>
                        <!--end::Header-->
                        <!--begin::Body-->
                        <div class="card-body py-4">
                            <div class="form-group row my-2">
                                <label class="col-6 col-form-label">Has Health Conditions:</label>
                                <div class="col-6">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->has_health_condition}}</span>
                                </div>
                            </div>
                            <hr>
                            <div class="form-group row my-0">
                                <label class="col-3 col-form-label">Min Age:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->min_age}}</span>
                                </div>
                                <label class="col-3 col-form-label">Max Age:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->max_age}}</span>
                                </div>
                            </div>
                            <div class="form-group row my-0">
                                <label class="col-3 col-form-label">Min BMI:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->min_bmi}}</span>
                                </div>
                                <label class="col-3 col-form-label">Max BMI:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->max_bmi}}</span>
                                </div>
                            </div>
                            <hr>
                            <div class="form-group row my-0">
                                <label class="col-3 col-form-label">Required Steps:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->required_steps}}</span>
                                </div>
                                <label class="col-3 col-form-label">Required Repeat:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->required_repeat}}</span>
                                </div>
                            </div>
                            <div class="form-group row my-0">
                                <label class="col-3 col-form-label">Required Period:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->required_period}}</span>
                                </div>
                                <label class="col-3 col-form-label">Required Cycle:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->required_cycle}}</span>
                                </div>
                            </div>
                            <div class="form-group row my-0">
                                <label class="col-6 col-form-label">Required Repeat Interval:</label>
                                <div class="col-6">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->required_repeat_interval}}</span>
                                </div>
                            </div>
                            <hr>
                            <div class="form-group row my-0">
                                <label class="col-3 col-form-label">Minimum Steps:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->minimum_steps}}</span>
                                </div>
                                <label class="col-3 col-form-label">Minimum Repeat:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->minimum_repeat}}</span>
                                </div>
                            </div>
                            <div class="form-group row my-0">
                                <label class="col-3 col-form-label">Minimum Period:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->minimum_period}}</span>
                                </div>
                                <label class="col-3 col-form-label">Minimum Cycle:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->minimum_cycle}}</span>
                                </div>
                            </div>
                            <div class="form-group row my-0">
                                <label class="col-6 col-form-label">Minimum Repeat Interval:</label>
                                <div class="col-6">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->requirement->minimum_repeat_interval}}</span>
                                </div>
                            </div>
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::List Widget 11-->
                </div>
                <div class="col-lg-6">
                    <!--begin::List Widget 11-->
                    <div class="card card-custom">
                        <!--begin::Header-->
                        <div class="card-header h-auto py-4 bg-warning-o-80">
                            <div class="card-title">
                                <h3 class="card-label">User Health Condition</h3>
                            </div>
                        </div>
                        <!--end::Header-->
                        <!--begin::Body-->
                        <div class="card-body py-4">
                            <div class="form-group row my-0">
                                <label class="col-3 col-form-label">Steps Date:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->daily_steps_date}}</span>
                                </div>
                                <label class="col-3 col-form-label">Steps:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->daily_steps}}</span>
                                </div>
                            </div>
                            <div class="form-group row my-0">
                                <label class="col-4 col-form-label">Goal Achieved:</label>
                                <div class="col-8">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->goal_achieved}}</span>
                                </div>
                            </div>
                            <div class="form-group row my-0">
                                <label class="col-4 col-form-label">Minimum Goal Achieved:</label>
                                <div class="col-8">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->minimum_goal_achieved}}</span>
                                </div>
                            </div>
                            <div class="form-group row my-0">
                                <label class="col-4 col-form-label">Total Steps In Week:</label>
                                <div class="col-8">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->total_steps_this_week}}</span>
                                </div>
                            </div>
                            <hr>
                            <div class="form-group row my-0">
                                <label class="col-3 col-form-label">Completes In:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->days_to_complete}} days</span>
                                </div>
                                <label class="col-3 col-form-label">Next Level In:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->next_level_days_left}} days</span>
                                </div>
                            </div>
                            <div class="form-group row my-0">
                                <label class="col-3 col-form-label">Required:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->steps_required_in_cycle}} steps</span>
                                </div>
                                <label class="col-3 col-form-label">Required In Cycle:</label>
                                <div class="col-3">
                                    <span class="form-control-plaintext font-weight-bolder">{{$profileData->minimum_steps_required_in_cycle}} steps</span>
                                </div>
                            </div>
                        </div>
                        <!--end::Body-->
                    </div>
                    <div class="card card-custom my-4">
                        <!--begin::Body-->
                        <div class="card-body py-4">
                            <h6>Weekly Stats</h6>
                            <table class="table">
                                <tr>
                                    @foreach($profileData->weekly_stats as $row)
                                    <th>{{$row['name']}}</th>
                                    @endforeach
                                </tr>
                                <tr>
                                    @foreach($profileData->weekly_stats as $row)
                                        <td>{{$row['value']}}</td>
                                    @endforeach
                                </tr>

                            </table>
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::List Widget 11-->
                </div>
            </div>
            <div class="row mt-10">
                <div class="col-lg-12">
                    <!--begin::Advance Table Widget 2-->
                    <div class="card card-custom card-stretch gutter-b">
                        <!--begin::Header-->
                        <div class="card-header border-0 pt-5">
                            <h3 class="card-title align-items-start flex-column">
                                <span class="card-label font-weight-bolder text-dark">User Downline</span>
                            </h3>
                        </div>
                        <!--end::Header-->
                        <!--begin::Body-->
                        <div class="card-body pt-2 pb-0 mt-n3">
                            <div class="table-responsive">
                                <table class="table table-borderless">
                                    <tbody>
                                    @foreach($downLine as $row)
                                        <tr>
                                            <td>
                                                <a href="mailto:{{$row->child->email}}" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">
                                                    {{$row->child->name}}
                                                </a>
                                                <div>
                                                    <span class="font-weight-bolder">Email:</span>
                                                    <a class="text-muted font-weight-bold text-hover-primary"
                                                       href="mailto:{{$row->child->email}}">{{$row->child->email}}</a>
                                                </div>
                                            </td>
                                            <td>
                                                <span class="text-muted font-weight-bold">Level</span>
                                                <span class="text-dark-75 font-weight-bolder d-block font-size-lg">{{$row->child->level}}</span>
                                            </td>
                                            <td>
                                                <span class="text-dark-75 font-weight-bolder d-block font-size-lg">{{$row->child->steps_goal}}</span>
                                                <span class="text-muted font-weight-bold">Steps Goal</span>
                                            </td>
                                            <td>
                                                <span class="text-muted font-weight-500">{{$row->child->country_code .' '. $row->child->phone}}</span>
                                            </td>
                                            <td>
                                                @if($row->child->activity_level == 'active')
                                                    <span class="label label-lg label-light-success label-inline">{{ucfirst($row->child->activity_level)}}</span>
                                                @elseif($row->child->activity_level == 'inactive')
                                                    <span class="label label-lg label-light-danger label-inline">{{ucfirst($row->child->activity_level)}}</span>
                                                @else
                                                    <span class="label label-lg label-light-warning label-inline">{{ucfirst($row->child->activity_level)}}</span>
                                                @endif
                                            </td>
                                            <td>
                                                <a href="{{url('admin/users/view',$row->child->id)}}" class="btn btn-icon btn-light btn-hover-primary btn-sm">
                                                    <i class="fa fa-eye"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::Advance Table Widget 2-->
                </div>
            </div>
            <!--end::Row-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Entry-->

@endsection
@push('footerscript')

@endpush
