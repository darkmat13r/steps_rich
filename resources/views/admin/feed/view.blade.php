@extends('admin.layout.app')
@push('title','View Feed Comments')
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
                    <h5 class="text-dark font-weight-bold my-1 mr-5">Feed Comments</h5>
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
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!--begin::List Widget 11-->
                    <div class="card card-custom">
                        <!--begin::Header-->
                        <div class="card-header h-auto py-4 bg-primary-o-80">
                            <div class="card-title">
                                <h3 class="card-label">Feeds Comments</h3>
                            </div>
                        </div>
                        <!--end::Header-->
                        <!--begin::Body-->
                        <div class="card-body py-4">
                            <table class="table">
                                <tr>
                                    <th>User Name</th>
                                    <th>Feed Comment</th>
                                </tr>
                                @foreach($data as $row)
                                    <tr>
                                        <td>{{$row->name}}</td>
                                        <td>{{$row->comment}}</td>
                                    </tr>
                                @endforeach

                            </table>
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::List Widget 11-->
                </div>
            </div>
            <!--end::Row-->
        </div>
    </div>

@endsection
@push('footerscript')

@endpush
