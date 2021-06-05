@extends('admin.layout.app')
@push('title','Add Feed')
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
                    <h5 class="text-dark font-weight-bold my-1 mr-5">Add Feed</h5>
                    <!--end::Page Title-->
                </div>
                <!--end::Page Heading-->
            </div>
            <div class="d-flex align-items-center">
                <!--begin::Actions-->
                <a href="{{route('feed.index')}}" class="btn btn-light-primary font-weight-bolder">
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
                <form action="{{route('feed.store')}}" method="post" class="form" enctype="multipart/form-data">
                    @csrf
                    <div class="card-header py-3">
                        <div class="row">
                            <div class="col-sm-8">
                                <h3 class="card-label font-weight-bolder text-dark py-3">Feeds Details</h3>
                            </div>
                        </div>
                    </div>
                    <!--begin::Body-->
                    <div class="card-body">
                        <!--begin::Contact-->
                        <div class="form-group row">
                            <div class="col-sm-12 col-12">
                                <label for="url">Image :<span class="text-danger">*</span></label>
                                <input type="file" name="url" value="{{old('url')}}"
                                       class="form-control" required accept="image/*">
                                <div class="text-danger">{{$errors->first('url')}}</div>
                            </div>
                            <div class="col-sm-12 col-12 mt-3">
                                <label content="">Content :<span class="text-danger">*</span></label>
                                <textarea type="text" name="content"
                                          class="form-control mb-2" required>{{old('content')}}</textarea>
                                <div class="text-danger">{{$errors->first('content')}}</div>
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
@endpush
