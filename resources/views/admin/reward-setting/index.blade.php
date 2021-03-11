@extends('admin.layout.app')
@push('title','Rewards Setting')
@push('headerscript')
    <link href="{{asset('admin/plugins/custom/datatables/datatables.bundled1cf.css?v=7.1.6')}}" rel="stylesheet"
          type="text/css"/>
    <style>
        .table{
            display: inline-table;
        }
    </style>
@endpush
@section('content')
    <div class="subheader py-2 py-lg-6 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex align-items-center flex-wrap mr-1">
                <!--begin::Page Heading-->
                <div class="d-flex align-items-baseline flex-wrap mr-5">
                    <!--begin::Page Title-->
                    <h5 class="text-dark font-weight-bold my-1 mr-5">Rewards Setting</h5>
                    <!--end::Page Title-->
                </div>
                <!--end::Page Heading-->
            </div>
            <div class="d-flex align-items-center">
                <!--begin::Actions-->
                <a href="{{route('reward-setting.create')}}" class="btn btn-light-primary font-weight-bolder">
                    <i class="fas fa-plus"></i>
                    ADD
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
                    <!--begin: Datatable-->
                    <div class="row">
                        <div class="col-sm-12 col-12">
                            <table class="table table-responsive datatables" id="datatables">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Step Level</th>
                                    <th>Tree Level</th>
                                    <th>Reward</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($data as $row)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$row->step_level}}</td>
                                    <td>{{$row->tree_level}}</td>
                                    <td>{{$row->reward}}</td>
                                    <td>
                                        <a href="{{route('reward-setting.edit', $row->id)}}" class="btn btn-primary btn-sm">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <button onclick="deleteIt({{$row->id}})" class="btn btn-danger btn-sm ml-1" title="Delete">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                                @endforeach
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
    <script src=".{{asset('admin/js/pages/features/miscellaneous/sweetalert2d1cf.js?v=7.1.6')}}"></script>
    <script>
        $('#datatables').DataTable()
        function deleteIt(id) {
            Swal.fire({
                title: "Are you sure?",
                text: "You won't be able to revert this!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonText: "Yes, delete it!",
                cancelButtonText: "No, cancel!",
                reverseButtons: true
            }).then(function (result) {
                if (result.value) {
                    $.ajax({
                        url: '{{ url('admin/reward-setting') }}/' + id,
                        type: 'delete',
                        dataType: "JSON",
                        data: {
                            "_token": "{{ csrf_token() }}"
                        },
                        success: function () {
                            location.reload()
                        }
                    });
                    swal.fire("Deleted!", "Data has been deleted!", "success");
                } else if (result.dismiss === "cancel") {
                    swal.fire("Cancelled", "Data is safe :)", "error");
                }
            });
        }
    </script>
@endpush
