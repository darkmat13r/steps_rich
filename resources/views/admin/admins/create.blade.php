@extends('admin.layout.app')
@push('title','Add Admin')
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
                    <h5 class="text-dark font-weight-bold my-1 mr-5">Add Admin</h5>
                    <!--end::Page Title-->
                </div>
                <!--end::Page Heading-->
            </div>
            <div class="d-flex align-items-center">
                <!--begin::Actions-->
                <a href="{{route('admins.index')}}" class="btn btn-light-primary font-weight-bolder">
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
                <form action="{{route('admins.store')}}" method="post" class="form">
                    @csrf
                    <div class="card-header py-3">
                        <div class="row">
                            <div class="col-sm-8">
                                <h3 class="card-label font-weight-bolder text-dark py-3">Fill Details</h3>
                            </div>
                        </div>
                    </div>
                    <!--begin::Body-->
                    <div class="card-body">
                        <!--begin::Contact-->
                        <div class="form-group row">
                            <div class="col-sm-6 col-12">
                                <label for="">Name :<span class="text-danger">*</span></label>
                                <input type="text" name="name" value="{{old('name')}}"
                                       class="form-control mb-2" required>
                                <div class="text-danger">{{$errors->first('name')}}</div>
                            </div>
                            <div class="col-sm-2 col-12">
                                <label for="">Country Code :<span class="text-danger">*</span></label>
                                <input type="text" name="country_code" value="{{old('country_code')}}"
                                       class="form-control" required placeholder="+91">
                                <div class="text-danger">{{$errors->first('country_code')}}</div>
                            </div>
                            <div class="col-sm-4 col-12">
                                <label for="">Phone :<span class="text-danger">*</span></label>
                                <input type="text" name="phone" maxlength="15" value="{{old('phone')}}"
                                       class="form-control number" required>
                                <div class="text-danger">{{$errors->first('phone')}}</div>
                            </div>
                        </div>
                        <!--end::Contact-->
                        <div class="form-group row">
                            <div class="col-sm-4 col-12">
                                <label for="">Email :<span class="text-danger">*</span></label>
                                <input type="email" name="email" value="{{old('email')}}"
                                       class="form-control mb-2" required>
                                <div class="text-danger">{{$errors->first('email')}}</div>
                            </div>
                            <div class="col-sm-4 col-12">
                                <label for="">Password :<span class="text-danger">*</span></label>
                                <input type="password" name="password" value="{{old('password')}}"
                                       class="form-control" required>
                                <div class="text-danger">{{$errors->first('password')}}</div>
                            </div>
                            <div class="col-sm-4 col-12">
                                <label for="">Confirm Password :<span class="text-danger">*</span></label>
                                <input type="password" name="password_confirmation" value="{{old('password_confirmation')}}"
                                       class="form-control" required>
                                <div class="text-danger">{{$errors->first('password_confirmation')}}</div>
                            </div>
                        </div>
                        <div class="text-right">
                            <button type="submit" class="btn btn-success">Save</button>
                        </div>
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
