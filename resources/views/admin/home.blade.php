@extends('admin.layout.app')
@push('title','Admin Dashboard')
@push('headerscript')
    <style>
        .rounded-xl {
            border-radius: 0.25rem !important;
        }

        .table-outline {
            border: 1px solid;
            border-color: #d8dbe0;
        }

        .table .thead-light th {
            color: #768192;
            background-color: #d8dbe0;
            border-color: #d8dbe0;
        }

        .table thead th {
            vertical-align: bottom;
            border-bottom: 2px solid;
            border-bottom-color: #d8dbe0;
        }

        .table th, .table td {
            padding: .75rem;
            vertical-align: top;
            border-top: 1px solid;
            border-top-color: #d8dbe0;
        }

        .bg-darkblue {
            background-color: #321fdb !important;
        }

        .bg-info {
            background-color: #39f !important
        }


    </style>
@endpush
@section('content')
    <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
        <div
            class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex align-items-center flex-wrap mr-2">
                <!--begin::Page Title-->
                <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Dashboard</h5>
                <!--end::Page Title-->
            </div>
            <!--end::Info-->
        </div>
    </div>
    <!--end::Subheader-->
    <!--begin::Entry-->
    <div class="d-flex flex-column-fluid">
        <!--begin::Container-->
        <div class="container">
            <!--begin::Dashboard-->
            <!--begin::Row-->

            <div class="row">
                <div class="col-lg-12">
                    <div class="row m-0">
                        <div class="col bg-darkblue px-6 py-8 rounded-xl mr-7 mb-7 text-center">
															<span class="d-block my-2">
                                                               <p class="text-white font-weight-bold font-size-h2">{{count($approvedUsers)}}</p>
															</span>
                            <a href="{{url('admin/users/index')}}"
                               class="text-white font-weight-bold font-size-h6">Approved Users</a>
                        </div>

                        <div class="col bg-info px-6 py-8 rounded-xl mr-7 mb-7 text-center">
															<span class="d-block my-2">
															    <p class="text-white font-weight-bold font-size-h2">{{count($pendingUsers)}}</p>
															</span>
                            <a href="{{url('admin/users/pending')}}"
                               class="text-white font-weight-bold font-size-h6">Pending Users</a>
                        </div>

                        <div class="col bg-warning px-6 py-8 rounded-xl mr-7 mb-7 text-center">
															<span class="d-block my-2">
                                                                <p class="text-white font-weight-bold font-size-h2">{{number_format($totalRewards,2)}}</p>
															</span>
                            <a href="{{url('admin/rewards')}}"
                               class="text-white font-weight-bold font-size-h6">Total Rewards</a>
                        </div>

                        <div class="col bg-danger px-6 py-8 rounded-xl  mb-7 text-center">
															<span class="d-block my-2">
                                                               <p class="text-white font-weight-bold font-size-h2">{{number_format($totalTransaction->sum('amount'),2)}}</p>
															</span>
                            <a href="{{url('admin/transaction')}}"
                               class="text-white font-weight-bold font-size-h6">Total Transactions</a>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-lg-12">
                    <div class="card card-custom card-stretch gutter-b">
                        <!--begin::Header-->
                        <div class="card-header border-0 pt-5">
                            <h3 class="card-title align-items-start flex-column">
                                <span class="card-label font-weight-bolder text-dark">User</span>
                            </h3>
                        </div>
                        <div class="card-body pt-2 pb-0 mt-n3">
                            <!--begin::Chart-->
                            <div id="chart_1"></div>
                            <!--end::Chart-->
                        </div>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-xxl-12 order-2 order-xxl-1">
                    <!--begin::Advance Table Widget 2-->
                    <div class="card card-custom card-stretch gutter-b">
                        <!--begin::Header-->
                        <div class="card-header border-0 pt-5">
                            <h3 class="card-title align-items-start flex-column">
                                <span class="card-label font-weight-bolder text-dark">Top Achievers</span>
                            </h3>
                        </div>
                        <!--end::Header-->
                        <!--begin::Body-->
                        <div class="card-body pt-2 pb-0 mt-n3">
                            <div class="table-responsive">
                                <table class="table table-responsive-sm table-hover table-outline">
                                    <thead class="thead-light">
                                    <tr>
                                        <th>User</th>
                                        <th>Email</th>
                                        <th>Level</th>
                                        <th>Steps Goal</th>
                                        <th>Mobile No</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($topUsers as $row)
                                        <tr>
                                            <td>
                                                <a href="mailto:{{$row->email}}"
                                                   class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">
                                                    {{$row->name}}
                                                </a>
                                            </td>
                                            <td>
                                                <span
                                                    class="text-dark-75 font-weight-500 d-block font-size-lg"><a
                                                        class="text-dark-75 text-hover-primary"
                                                        href="mailto:{{$row->email}}">{{$row->email}}</a></span>
                                            </td>
                                            <td>
                                                <span
                                                    class="text-dark-75 font-weight-500 d-block font-size-lg">{{$row->level}}</span>
                                            </td>
                                            <td>
                                                <span
                                                    class="text-dark-75 font-weight-500 d-block font-size-lg">{{$row->steps_goal}}</span>
                                            </td>
                                            <td>
                                                <span
                                                    class="text-dark-75 font-weight-500">{{$row->country_code .' '. $row->phone}}</span>
                                            </td>
                                            <td>
                                                @if($row->activity_level == 'active')
                                                    <span
                                                        class="label label-lg label-light-success label-inline">{{ucfirst($row->activity_level)}}</span>
                                                @elseif($row->activity_level == 'inactive')
                                                    <span
                                                        class="label label-lg label-light-danger label-inline">{{ucfirst($row->activity_level)}}</span>
                                                @else
                                                    <span
                                                        class="label label-lg label-light-warning label-inline">{{ucfirst($row->activity_level)}}</span>
                                                @endif
                                            </td>
                                            <td>
                                                <a href="{{url('admin/users/view',$row->id)}}"
                                                   class="btn btn-icon btn-primary btn-hover-primary btn-sm">
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


        </div>
    </div>

    <!--end::Row-->
    <!--end::Dashboard-->

    <!--end::Entry-->


@endsection
@push('footerscript')
    <script src="{{asset('admin/js/pages/features/charts/apexcharts.js?v=7.1.6')}}"></script>
    <script>

        // Shared Colors Definition
        const primary = '#6993FF';
        const success = '#1BC5BD';
        const info = '#8950FC';
        const warning = '#FFA800';
        const danger = '#F64E60';

        // Class definition
        function generateBubbleData(baseval, count, yrange) {
            var i = 0;
            var series = [];
            while (i < count) {
                var x = Math.floor(Math.random() * (750 - 1 + 1)) + 1;
                var y = Math.floor(Math.random() * (yrange.max - yrange.min + 1)) + yrange.min;
                var z = Math.floor(Math.random() * (75 - 15 + 1)) + 15;

                series.push([x, y, z]);
                baseval += 86400000;
                i++;
            }
            return series;
        }

        function generateData(count, yrange) {
            var i = 0;
            var series = [];
            while (i < count) {
                var x = 'w' + (i + 1).toString();
                var y = Math.floor(Math.random() * (yrange.max - yrange.min + 1)) + yrange.min;

                series.push({
                    x: x,
                    y: y
                });
                i++;
            }
            return series;
        }

        var KTApexChartsDemo = function () {
            var _demo1 = function () {
                const apexChart = "#chart_1";
                var options = {
                    series: [{
                        name: 'Approved Users',
                        data: [@for ($m=1; $m<=12; $m++)
                        {
                            month: "{{$month = date('M', mktime(0,0,0,$m))}}",
                            value: "{{\App\Helpers\CommonClass::getApprovedUserByMonth($m)}}",
                        },
                            @endfor]
                    }, {
                        name: 'Pending Users',
                        data: [11, 32, 45, 32, 34, 52, 41]
                    }],
                    chart: {
                        height: 350,
                        type: 'line',
                        zoom: {
                            enabled: false
                        }
                    },
                    dataLabels: {
                        enabled: false
                    },
                    stroke: {
                        curve: 'smooth'
                    },
                    grid: {
                        row: {
                            colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
                            opacity: 0.5
                        },
                    },
                    xaxis: {
                        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                    },
                    colors: [primary]
                };

                var chart = new ApexCharts(document.querySelector(apexChart), options);
                chart.render();
            }


            return {
                // public functions
                init: function () {
                    _demo1();
                }
            };
        }();

        jQuery(document).ready(function () {
            KTApexChartsDemo.init();
        });
    </script>
@endpush
