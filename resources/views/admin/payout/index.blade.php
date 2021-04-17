@extends('admin.layout.app')
@push('title','Payouts')
@push('headerscript')
    <link href="{{asset('admin/plugins/custom/datatables/datatables.bundled1cf.css?v=7.1.6')}}" rel="stylesheet"
          type="text/css"/>
@endpush
@section('content')
    <form action="{{url('admin/payout/done')}}" method="post" id="barForm">
        @csrf
    <div class="subheader py-2 py-lg-6 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex align-items-center flex-wrap mr-1">
                <!--begin::Page Heading-->
                <div class="d-flex align-items-baseline flex-wrap mr-5">
                    <!--begin::Page Title-->
                    <h5 class="text-dark font-weight-bold my-1 mr-5">Payouts</h5>
                    <!--end::Page Title-->

                </div>
                <!--end::Page Heading-->
            </div>
            <div class="d-flex align-items-center">
                <a href="{{url('admin/payout-report-excel')}}" title="Export Excel" class="btn btn-success mr-5">
                    <i class="fa fa-file-excel"></i>
                </a>
                <button type="submit" class="btn btn-primary" role="button">
                    <i class="fa fa-print"></i>
                    Payout Done
                </button>
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
                                    <th>Wallet</th>
                                    <th>Bank</th>
                                    <th>Acc. Name</th>
                                    <th>Acc. No.</th>
                                    <th>Acc. Type.</th>
                                    <th>
                                        <div class="checkbox checkbox-success">
                                            <label  class="checkbox">
                                                <input type="checkbox" id="checkall"/>
                                                <span></span>
                                                Check All
                                            </label>
                                        </div>
                                    </th>
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
    </form>
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
                    url: '{{url('admin/payout/getData')}}',
                },
                columns: [
                    {data: 'DT_RowIndex', name: 'DT_RowIndex', searchable: false},
                    {data: 'name', name: 'name'},
                    {data: 'email', name: 'email'},
                    {data: 'wallet_amount', name: 'wallet_amount'},
                    {data: 'bank_name', name: 'bank_name'},
                    {data: 'account_name', name: 'account_name'},
                    {data: 'account_number', name: 'account_number'},
                    {data: 'account_type', name: 'account_type'},
                    {data: 'action', name: 'action', orderable: false, searchable: false},
                ]
            });
        })

        $("#checkall").on('click', function () {
            if (document.getElementById("checkall").checked == true) {
                $(".check").prop('checked', true)
            } else {
                $(".check").prop('checked', false)
            }
        })
        $("form#barForm").on('submit', function () {
            var classAChecked = $(".check:checkbox:checked").length;
            if (classAChecked == 0) {
                alert("Please select atleast one checkbox to proceed");
                return false;
            } return true;
        })

    </script>
@endpush