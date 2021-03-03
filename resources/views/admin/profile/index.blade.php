@extends('admin.layout.app')
@push('title','Profile')
@section('content')
    <div class="subheader py-2 py-lg-6 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex align-items-center flex-wrap mr-1">
                <!--begin::Mobile Toggle-->
                <button class="burger-icon burger-icon-left mr-4 d-inline-block d-lg-none"
                        id="kt_subheader_mobile_toggle">
                    <span></span>
                </button>
                <!--end::Mobile Toggle-->
                <!--begin::Page Heading-->
                <div class="d-flex align-items-baseline flex-wrap mr-5">
                    <!--begin::Page Title-->
                    <h5 class="text-dark font-weight-bold my-1 mr-5">Profile</h5>
                    <!--end::Page Title-->
                    <!--begin::Breadcrumb-->
                    <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                        <li class="breadcrumb-item">
                            Account Setting
                        </li>
                    </ul>
                    <!--end::Breadcrumb-->
                </div>
                <!--end::Page Heading-->
            </div>
            <!--end::Info-->
        </div>
    </div>
    <!--end::Subheader-->
    <!--begin::Entry-->
    <div class="d-flex flex-column-fluid">
        <!--begin::Container-->
        <div class="container">
            <!--begin::Profile Change Password-->
            <div class="row">
                <!--begin::Aside-->
                <div class="col-sm-4 col-12">
                    <!--begin::Profile Card-->
                    <div class="card card-custom">
                        <form action="{{url('admin/update/profile')}}" method="post" class="form">
                            @csrf
                            <div class="card-header py-3">
                                <div class="row">
                                    <div class="col-sm-8">
                                        <h3 class="card-label font-weight-bolder text-dark py-3">Basic Details</h3>
                                    </div>
                                    <div class="col-sm-4 text-right">
                                        <button type="submit" class="btn btn-success">Update</button>
                                    </div>
                                </div>
                            </div>
                            <!--begin::Body-->
                            <div class="card-body">
                                <!--begin::Contact-->
                                <div class="form-group row">
                                    <div class="col-sm-12 col-12">
                                        <label for="">Name :</label>
                                        <input type="hidden" name="mode" value="1">
                                        <input type="text" name="name" value="{{old('name', $data->name)}}"
                                               class="form-control form-control-lg form-control-solid mb-2" required>
                                        <div class="text-danger">{{$errors->first('name')}}</div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-12 col-12">
                                        <label for="">Email :</label>
                                        <input type="email" name="email" value="{{old('email', $data->email)}}"
                                               class="form-control form-control-lg form-control-solid" required>
                                        <div class="text-danger">{{$errors->first('email')}}</div>
                                    </div>
                                </div>
                                <!--end::Contact-->
                            </div>
                        </form>
                        <!--end::Body-->
                    </div>
                    <!--end::Profile Card-->
                </div>
                <!--end::Aside-->
                <!--begin::Content-->
                <div class="col-sm-8 col-12">
                    <!--begin::Card-->
                    <div class="card card-custom">
                        <!--begin::Header-->
                        <form action="{{url('admin/update/profile')}}" method="post" class="form">
                            @csrf
                            <div class="card-header py-3">
                                <div class="row">
                                    <div class="col-sm-8">
                                        <h3 class="card-label font-weight-bolder text-dark py-3">Update Password</h3>
                                    </div>
                                    <div class="col-sm-4 text-right">
                                        <button type="submit" class="btn btn-success">Update</button>
                                    </div>
                                </div>
                            </div>
                            <!--end::Header-->
                            <!--begin::Form-->
                            <div class="card-body">
                                <div class="form-group row">
                                    <div class="col-sm-12 col-12">
                                        <label>Old Password</label>
                                        <input type="hidden" name="mode" value="2">
                                        <input type="password" name="oldpassword" class="form-control form-control-lg form-control-solid mb-2" value=""
                                               placeholder="Current password" required>
                                        <div class="text-danger">{{$errors->first('oldpassword')}}</div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 col-12">
                                        <label>New Password</label>
                                        <input type="password" name="password" class="form-control form-control-lg form-control-solid"
                                               value="" placeholder="New password" required>
                                        <div class="text-danger">{{$errors->first('password')}}</div>
                                    </div>
                                    <div class="col-sm-6 col-12">
                                        <label>Confirm Password</label>
                                        <input type="password" name="password_confirmation" class="form-control form-control-lg form-control-solid"
                                               value="" placeholder="Verify password" required>
                                        <div class="text-danger">{{$errors->first('password_confirmation')}}</div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <!--end::Form-->
                    </div>
                </div>
                <!--end::Content-->
            </div>
            <!--end::Profile Change Password-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Entry-->

@endsection
