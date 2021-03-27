@extends('admin.layout.app')
@push('title','Admin Dashboard')
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
                <div class="col-lg-12 col-xxl-4">
                    <!--begin::Mixed Widget 1-->
                    <div class="card card-custom bg-gray-100 card-stretch gutter-b">
                        <!--begin::Header-->
                        <div class="card-header border-0 bg-danger py-5">
                            <h3 class="card-title font-weight-bolder text-white">Statistics</h3>
                        </div>
                        <!--end::Header-->
                        <!--begin::Body-->
                        <div class="card-body p-0 position-relative overflow-hidden">
                            <!--begin::Chart-->
                            <div id="kt_mixed_widget_1_chartss" class="card-rounded-bottom bg-danger" style="height: 200px">

                            </div>
                            <!--end::Chart-->
                            <!--begin::Stats-->
                            <div class="card-spacer mt-n25">
                                <!--begin::Row-->
                                <div class="row m-0">
                                    <div class="col bg-light-warning px-6 py-8 rounded-xl mr-7 mb-7">
                                        <h3>{{count($approvedUsers)}}</h3><br>
                                        <h6 class="text-warning font-weight-bold font-size-h6">Approved Users</h6>
                                    </div>
                                    <div class="col bg-light-primary px-6 py-8 rounded-xl mr-7 mb-7">
                                        <h3>{{count($pendingUsers)}}</h3><br>
                                        <h6 class="text-primary font-weight-bold font-size-h6">Pending Users</h6>
                                    </div>
                                    <div class="col bg-light-danger px-6 py-8 rounded-xl mr-7 mb-7">
                                        <h3>{{number_format($totalRewards,2)}}</h3><br>
                                        <a href="#" class="text-danger font-weight-bold font-size-h6 mt-2">
                                            Total Rewards
                                        </a>
                                    </div>
                                    <div class="col bg-light-success px-6 py-8 rounded-xl mr-7 mb-7">
                                        <h3>{{number_format($totalTransaction->sum('amount'),2)}}</h3><br>
                                        <a href="#" class="text-success font-weight-bold font-size-h6 mt-2">
                                            Total Transactions
                                        </a>
                                    </div>
                                </div>
                                <!--end::Row-->
                            </div>
                            <!--end::Stats-->
                            <div class="resize-triggers">
                                <div class="expand-trigger">
                                    <div style="width: 506px; height: 447px;"></div>
                                </div>
                                <div class="contract-trigger"></div>
                            </div>
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::Mixed Widget 1-->
                </div>
                <div class="col-xxl-8 order-2 order-xxl-1">
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
                                <table class="table table-borderless">
                                    <tbody>
                                    @foreach($topUsers as $row)
                                        <tr>
                                            <td>
                                                <a href="mailto:{{$row->email}}" class="text-dark-75 font-weight-bolder text-hover-primary mb-1 font-size-lg">
                                                    {{$row->name}}
                                                </a>
                                                <div>
                                                    <span class="font-weight-bolder">Email:</span>
                                                    <a class="text-muted font-weight-bold text-hover-primary"
                                                       href="mailto:{{$row->email}}">{{$row->email}}</a>
                                                </div>
                                            </td>
                                            <td>
                                                <span class="text-muted font-weight-bold">Level</span>
                                                <span class="text-dark-75 font-weight-bolder d-block font-size-lg">{{$row->level}}</span>
                                            </td>
                                            <td>
                                                <span class="text-dark-75 font-weight-bolder d-block font-size-lg">{{$row->steps_goal}}</span>
                                                <span class="text-muted font-weight-bold">Steps Goal</span>
                                            </td>
                                            <td>
                                                <span class="text-muted font-weight-500">{{$row->country_code .' '. $row->phone}}</span>
                                            </td>
                                            <td>
                                                @if($row->activity_level == 'active')
                                                    <span class="label label-lg label-light-success label-inline">{{ucfirst($row->activity_level)}}</span>
                                                @elseif($row->activity_level == 'inactive')
                                                    <span class="label label-lg label-light-danger label-inline">{{ucfirst($row->activity_level)}}</span>
                                                @else
                                                    <span class="label label-lg label-light-warning label-inline">{{ucfirst($row->activity_level)}}</span>
                                                @endif
                                            </td>
                                            <td>
                                                <a href="{{url('admin/users/view',$row->id)}}" class="btn btn-icon btn-light btn-hover-primary btn-sm">
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
            <!--end::Dashboard-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Entry-->


@endsection
@push('footerscript')
    <script src="{{asset('admin/js/pages/widgetsd1cf.js?v=7.1.6')}}"></script>
    <script>
        var KTAppSettings = {
            breakpoints: { sm: 576, md: 768, lg: 992, xl: 1200, xxl: 1400 },
            colors: {
                theme: {
                    base: { white: "#ffffff", primary: "#3699FF", secondary: "#E5EAEE", success: "#1BC5BD", info: "#8950FC", warning: "#FFA800", danger: "#F64E60", light: "#E4E6EF", dark: "#181C32" },
                    light: { white: "#ffffff", primary: "#E1F0FF", secondary: "#EBEDF3", success: "#C9F7F5", info: "#EEE5FF", warning: "#FFF4DE", danger: "#FFE2E5", light: "#F3F6F9", dark: "#D6D6E0" },
                    inverse: { white: "#ffffff", primary: "#ffffff", secondary: "#3F4254", success: "#ffffff", info: "#ffffff", warning: "#ffffff", danger: "#ffffff", light: "#464E5F", dark: "#ffffff" },
                },
                gray: { "gray-100": "#F3F6F9", "gray-200": "#EBEDF3", "gray-300": "#E4E6EF", "gray-400": "#D1D3E0", "gray-500": "#B5B5C3", "gray-600": "#7E8299", "gray-700": "#5E6278", "gray-800": "#3F4254", "gray-900": "#181C32" },
            },
            "font-family": "Poppins",
        };

        $(document).ready(function(){
            var t = document.getElementById("kt_mixed_widget_1_chartss"),
                e = parseInt(KTUtil.css(t, "height"));
            if (t) {
                var o = "#D13647",
                    s = {
                        series: [{ name: "Users", data: [
                                @for ($m=1; $m<=12; $m++)
                                    {{CommonClass::getUserByMonth($m)}},
                                @endfor
                            ] }],
                        chart: {
                            type: "area",
                            height: e,
                            toolbar: { show: !1 },
                            zoom: { enabled: !1 },
                            sparkline: { enabled: !0 },
                            dropShadow: { enabled: !0, enabledOnSeries: void 0, top: 5, left: 0, blur: 3, color: o, opacity: 0.5 },
                        },
                        plotOptions: {},
                        legend: { show: !1 },
                        dataLabels: { enabled: !1 },
                        fill: { type: "solid", opacity: 0 },
                        stroke: { curve: "smooth", show: !0, width: 3, colors: [o] },
                        xaxis: {
                            categories: [
                                @for ($m=1; $m<=12; $m++)
                                    "{{$month = date('M', mktime(0,0,0,$m))}}",
                                @endfor
                            ],
                            axisBorder: { show: !1 },
                            axisTicks: { show: !1 },
                            labels: { show: !1, style: { colors: KTApp.getSettings().colors.gray["gray-500"], fontSize: "12px", fontFamily: KTApp.getSettings()["font-family"] } },
                            crosshairs: { show: !1, position: "front", stroke: { color: KTApp.getSettings().colors.gray["gray-300"], width: 1, dashArray: 3 } },
                        },
                        yaxis: { min: 0, max: 80, labels: { show: !1, style: { colors: KTApp.getSettings().colors.gray["gray-500"], fontSize: "12px", fontFamily: KTApp.getSettings()["font-family"] } } },
                        states: { normal: { filter: { type: "none", value: 0 } }, hover: { filter: { type: "none", value: 0 } }, active: { allowMultipleDataPointsSelection: !1, filter: { type: "none", value: 0 } } },
                        tooltip: {
                            style: { fontSize: "12px", fontFamily: KTApp.getSettings()["font-family"] },
                            y: {
                                formatter: function (t) {
                                    return "" + t + " ";
                                },
                            },
                            marker: { show: !1 },
                        },
                        colors: ["transparent"],
                        markers: { colors: [KTApp.getSettings().colors.theme.light.danger], strokeColor: [o], strokeWidth: 3 },
                    };
                new ApexCharts(t, s).render();
            }
        });
        jQuery(document).ready(function () {
            KTWidgets.init();
        });
    </script>
    @endpush
