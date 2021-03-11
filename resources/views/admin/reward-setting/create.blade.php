@extends('admin.layout.app')
@push('title','Add Reward Setting')
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
                    <h5 class="text-dark font-weight-bold my-1 mr-5">Add Reward Setting</h5>
                    <!--end::Page Title-->
                </div>
                <!--end::Page Heading-->
            </div>
            <div class="d-flex align-items-center">
                <!--begin::Actions-->
                <a href="{{route('reward-setting.index')}}" class="btn btn-light-primary font-weight-bolder">
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
                <form action="{{route('reward-setting.store')}}" method="post" class="form">
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
                            <div class="col-sm-4 col-12">
                                <label for="">Step Level :<span class="text-danger">*</span></label>
                                <input type="text" name="step_level" value="{{old('step_level')}}"
                                       class="form-control number mb-2" required>
                                <div class="text-danger">{{$errors->first('step_level')}}</div>
                            </div>
                            <div class="col-sm-4 col-12">
                                <label for="">Tree Level :<span class="text-danger">*</span></label>
                                <input type="text" name="tree_level" value="{{old('tree_level')}}"
                                       class="form-control number" required>
                                <div class="text-danger">{{$errors->first('tree_level')}}</div>
                            </div>
                            <div class="col-sm-4 col-12">
                                <label for="">Reward :<span class="text-danger">*</span></label>
                                <input type="number" step="0.01" name="reward" value="{{old('reward')}}"
                                       class="form-control" required>
                                <div class="text-danger">{{$errors->first('reward')}}</div>
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
