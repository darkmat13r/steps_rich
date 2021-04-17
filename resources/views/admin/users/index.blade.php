@extends('admin.layout.app')
@push('title','All Users')
@push('headerscript')
    <link href="{{asset('admin/plugins/custom/datatables/datatables.bundled1cf.css?v=7.1.6')}}" rel="stylesheet"
          type="text/css"/>
@endpush
@section('content')
    <div class="subheader py-2 py-lg-6 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex align-items-center flex-wrap mr-1">
                <!--begin::Page Heading-->
                <div class="d-flex align-items-baseline flex-wrap mr-5">
                    <!--begin::Page Title-->
                    <h5 class="text-dark font-weight-bold my-1 mr-5">All Users</h5>
                    <!--end::Page Title-->
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
            <!--begin::Card-->
            <div class="card card-custom gutter-b">
                <div class="card-body">
                    <!--begin: Datatable-->
                    <div class="row">
                        <div class="col-sm-12 col-12 table-responsive">
                            <table class="table table-responsive datatables" id="datatables">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Referral Code</th>
                                    <th>Steps Goal</th>
                                    <th>Gender</th>
                                    <th>Age</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--end: Datatable-->
                </div>
            </div>
            <!--end::Card-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Entry-->

@endsection
@push('footerscript')
    <script src="{{asset('admin/plugins/custom/datatables/datatables.bundled1cf.js?v=7.1.6')}}"></script>
    <script src="{{asset('admin/js/pages/crud/datatables/basic/basicd1cf.js?v=7.1.6')}}"></script>
    <script>
        $(function () {
            $('#datatables').DataTable({
                processing: true,
                serverSide: true,
                stateSave: true,
                ajax: {
                    url: '{{url('admin/users/getData')}}',
                },
                columns: [
                    {data: 'DT_RowIndex', name: 'DT_RowIndex', searchable: false},
                    {data: 'name', name: 'name'},
                    {data: 'email', name: 'email'},
                    {data: 'referral_code', name: 'referral_code'},
                    {data: 'steps_goal', name: 'steps_goal'},
                    {data: 'gender', name: 'gender'},
                    {data: 'age', name: 'age'},
                    {data: 'action', name: 'action', orderable: false, searchable: false},
                ]
            });
        })
    </script>
@endpush
