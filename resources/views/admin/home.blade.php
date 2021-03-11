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
                            <div id="kt_mixed_widget_1_chart" class="card-rounded-bottom bg-danger"
                                 style="height: 200px; min-height: 200px;">
                                <div id="apexchartszsn71zli"
                                     class="apexcharts-canvas apexchartszsn71zli apexcharts-theme-light"
                                     style="width: 505px; height: 200px;">
                                    <svg id="SvgjsSvg1249" width="505" height="200" xmlns="http://www.w3.org/2000/svg"
                                         version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink"
                                         xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg"
                                         xmlns:data="ApexChartsNS" transform="translate(0, 0)"
                                         style="background: transparent;">
                                        <g id="SvgjsG1251" class="apexcharts-inner apexcharts-graphical"
                                           transform="translate(0, 0)">
                                            <defs id="SvgjsDefs1250">
                                                <clipPath id="gridRectMaskzsn71zli">
                                                    <rect id="SvgjsRect1254" width="512" height="203" x="-3.5" y="-1.5"
                                                          rx="0" ry="0" opacity="1" stroke-width="0" stroke="none"
                                                          stroke-dasharray="0" fill="#fff"></rect>
                                                </clipPath>
                                                <clipPath id="gridRectMarkerMaskzsn71zli">
                                                    <rect id="SvgjsRect1255" width="509" height="204" x="-2" y="-2"
                                                          rx="0" ry="0" opacity="1" stroke-width="0" stroke="none"
                                                          stroke-dasharray="0" fill="#fff"></rect>
                                                </clipPath>
                                                <filter id="SvgjsFilter1261" filterUnits="userSpaceOnUse" width="200%"
                                                        height="200%" x="-50%" y="-50%">
                                                    <feFlood id="SvgjsFeFlood1262" flood-color="#d13647"
                                                             flood-opacity="0.5" result="SvgjsFeFlood1262Out"
                                                             in="SourceGraphic"></feFlood>
                                                    <feComposite id="SvgjsFeComposite1263" in="SvgjsFeFlood1262Out"
                                                                 in2="SourceAlpha" operator="in"
                                                                 result="SvgjsFeComposite1263Out"></feComposite>
                                                    <feOffset id="SvgjsFeOffset1264" dx="0" dy="5"
                                                              result="SvgjsFeOffset1264Out"
                                                              in="SvgjsFeComposite1263Out"></feOffset>
                                                    <feGaussianBlur id="SvgjsFeGaussianBlur1265" stdDeviation="3 "
                                                                    result="SvgjsFeGaussianBlur1265Out"
                                                                    in="SvgjsFeOffset1264Out"></feGaussianBlur>
                                                    <feMerge id="SvgjsFeMerge1266" result="SvgjsFeMerge1266Out"
                                                             in="SourceGraphic">
                                                        <feMergeNode id="SvgjsFeMergeNode1267"
                                                                     in="SvgjsFeGaussianBlur1265Out"></feMergeNode>
                                                        <feMergeNode id="SvgjsFeMergeNode1268"
                                                                     in="[object Arguments]"></feMergeNode>
                                                    </feMerge>
                                                    <feBlend id="SvgjsFeBlend1269" in="SourceGraphic"
                                                             in2="SvgjsFeMerge1266Out" mode="normal"
                                                             result="SvgjsFeBlend1269Out"></feBlend>
                                                </filter>
                                                <filter id="SvgjsFilter1271" filterUnits="userSpaceOnUse" width="200%"
                                                        height="200%" x="-50%" y="-50%">
                                                    <feFlood id="SvgjsFeFlood1272" flood-color="#d13647"
                                                             flood-opacity="0.5" result="SvgjsFeFlood1272Out"
                                                             in="SourceGraphic"></feFlood>
                                                    <feComposite id="SvgjsFeComposite1273" in="SvgjsFeFlood1272Out"
                                                                 in2="SourceAlpha" operator="in"
                                                                 result="SvgjsFeComposite1273Out"></feComposite>
                                                    <feOffset id="SvgjsFeOffset1274" dx="0" dy="5"
                                                              result="SvgjsFeOffset1274Out"
                                                              in="SvgjsFeComposite1273Out"></feOffset>
                                                    <feGaussianBlur id="SvgjsFeGaussianBlur1275" stdDeviation="3 "
                                                                    result="SvgjsFeGaussianBlur1275Out"
                                                                    in="SvgjsFeOffset1274Out"></feGaussianBlur>
                                                    <feMerge id="SvgjsFeMerge1276" result="SvgjsFeMerge1276Out"
                                                             in="SourceGraphic">
                                                        <feMergeNode id="SvgjsFeMergeNode1277"
                                                                     in="SvgjsFeGaussianBlur1275Out"></feMergeNode>
                                                        <feMergeNode id="SvgjsFeMergeNode1278"
                                                                     in="[object Arguments]"></feMergeNode>
                                                    </feMerge>
                                                    <feBlend id="SvgjsFeBlend1279" in="SourceGraphic"
                                                             in2="SvgjsFeMerge1276Out" mode="normal"
                                                             result="SvgjsFeBlend1279Out"></feBlend>
                                                </filter>
                                            </defs>
                                            <g id="SvgjsG1280" class="apexcharts-xaxis" transform="translate(0, 0)">
                                                <g id="SvgjsG1281" class="apexcharts-xaxis-texts-g"
                                                   transform="translate(0, -4)"></g>
                                            </g>
                                            <g id="SvgjsG1283" class="apexcharts-grid">
                                                <g id="SvgjsG1284" class="apexcharts-gridlines-horizontal"
                                                   style="display: none;">
                                                    <line id="SvgjsLine1286" x1="0" y1="0" x2="505" y2="0"
                                                          stroke="#e0e0e0" stroke-dasharray="0"
                                                          class="apexcharts-gridline"></line>
                                                    <line id="SvgjsLine1287" x1="0" y1="20" x2="505" y2="20"
                                                          stroke="#e0e0e0" stroke-dasharray="0"
                                                          class="apexcharts-gridline"></line>
                                                    <line id="SvgjsLine1288" x1="0" y1="40" x2="505" y2="40"
                                                          stroke="#e0e0e0" stroke-dasharray="0"
                                                          class="apexcharts-gridline"></line>
                                                    <line id="SvgjsLine1289" x1="0" y1="60" x2="505" y2="60"
                                                          stroke="#e0e0e0" stroke-dasharray="0"
                                                          class="apexcharts-gridline"></line>
                                                    <line id="SvgjsLine1290" x1="0" y1="80" x2="505" y2="80"
                                                          stroke="#e0e0e0" stroke-dasharray="0"
                                                          class="apexcharts-gridline"></line>
                                                    <line id="SvgjsLine1291" x1="0" y1="100" x2="505" y2="100"
                                                          stroke="#e0e0e0" stroke-dasharray="0"
                                                          class="apexcharts-gridline"></line>
                                                    <line id="SvgjsLine1292" x1="0" y1="120" x2="505" y2="120"
                                                          stroke="#e0e0e0" stroke-dasharray="0"
                                                          class="apexcharts-gridline"></line>
                                                    <line id="SvgjsLine1293" x1="0" y1="140" x2="505" y2="140"
                                                          stroke="#e0e0e0" stroke-dasharray="0"
                                                          class="apexcharts-gridline"></line>
                                                    <line id="SvgjsLine1294" x1="0" y1="160" x2="505" y2="160"
                                                          stroke="#e0e0e0" stroke-dasharray="0"
                                                          class="apexcharts-gridline"></line>
                                                    <line id="SvgjsLine1295" x1="0" y1="180" x2="505" y2="180"
                                                          stroke="#e0e0e0" stroke-dasharray="0"
                                                          class="apexcharts-gridline"></line>
                                                    <line id="SvgjsLine1296" x1="0" y1="200" x2="505" y2="200"
                                                          stroke="#e0e0e0" stroke-dasharray="0"
                                                          class="apexcharts-gridline"></line>
                                                </g>
                                                <g id="SvgjsG1285" class="apexcharts-gridlines-vertical"
                                                   style="display: none;"></g>
                                                <line id="SvgjsLine1298" x1="0" y1="200" x2="505" y2="200"
                                                      stroke="transparent" stroke-dasharray="0"></line>
                                                <line id="SvgjsLine1297" x1="0" y1="1" x2="0" y2="200"
                                                      stroke="transparent" stroke-dasharray="0"></line>
                                            </g>
                                            <g id="SvgjsG1256" class="apexcharts-area-series apexcharts-plot-series">
                                                <g id="SvgjsG1257" class="apexcharts-series" seriesName="NetxProfit"
                                                   data:longestSeries="true" rel="1" data:realIndex="0">
                                                    <path id="SvgjsPath1260"
                                                          d="M 0 200L 0 125C 29.458333333333332 125 54.70833333333334 87.5 84.16666666666667 87.5C 113.625 87.5 138.875 120 168.33333333333334 120C 197.79166666666669 120 223.04166666666669 25 252.5 25C 281.9583333333333 25 307.20833333333337 100 336.6666666666667 100C 366.125 100 391.375 100 420.8333333333333 100C 450.29166666666663 100 475.5416666666667 100 505 100C 505 100 505 100 505 200M 505 100z"
                                                          fill="transparent" fill-opacity="1" stroke-opacity="1"
                                                          stroke-linecap="butt" stroke-width="0" stroke-dasharray="0"
                                                          class="apexcharts-area" index="0"
                                                          clip-path="url(#gridRectMaskzsn71zli)"
                                                          filter="url(#SvgjsFilter1261)"
                                                          pathTo="M 0 200L 0 125C 29.458333333333332 125 54.70833333333334 87.5 84.16666666666667 87.5C 113.625 87.5 138.875 120 168.33333333333334 120C 197.79166666666669 120 223.04166666666669 25 252.5 25C 281.9583333333333 25 307.20833333333337 100 336.6666666666667 100C 366.125 100 391.375 100 420.8333333333333 100C 450.29166666666663 100 475.5416666666667 100 505 100C 505 100 505 100 505 200M 505 100z"
                                                          pathFrom="M -1 200L -1 200L 84.16666666666667 200L 168.33333333333334 200L 252.5 200L 336.6666666666667 200L 420.8333333333333 200L 505 200"></path>
                                                    <path id="SvgjsPath1270"
                                                          d="M 0 125C 29.458333333333332 125 54.70833333333334 87.5 84.16666666666667 87.5C 113.625 87.5 138.875 120 168.33333333333334 120C 197.79166666666669 120 223.04166666666669 25 252.5 25C 281.9583333333333 25 307.20833333333337 100 336.6666666666667 100C 366.125 100 391.375 100 420.8333333333333 100C 450.29166666666663 100 475.5416666666667 100 505 100"
                                                          fill="none" fill-opacity="1" stroke="#d13647"
                                                          stroke-opacity="1" stroke-linecap="butt" stroke-width="3"
                                                          stroke-dasharray="0" class="apexcharts-area" index="0"
                                                          clip-path="url(#gridRectMaskzsn71zli)"
                                                          filter="url(#SvgjsFilter1271)"
                                                          pathTo="M 0 125C 29.458333333333332 125 54.70833333333334 87.5 84.16666666666667 87.5C 113.625 87.5 138.875 120 168.33333333333334 120C 197.79166666666669 120 223.04166666666669 25 252.5 25C 281.9583333333333 25 307.20833333333337 100 336.6666666666667 100C 366.125 100 391.375 100 420.8333333333333 100C 450.29166666666663 100 475.5416666666667 100 505 100"
                                                          pathFrom="M -1 200L -1 200L 84.16666666666667 200L 168.33333333333334 200L 252.5 200L 336.6666666666667 200L 420.8333333333333 200L 505 200"></path>
                                                    <g id="SvgjsG1258" class="apexcharts-series-markers-wrap"
                                                       data:realIndex="0">
                                                        <g class="apexcharts-series-markers">
                                                            <circle id="SvgjsCircle1304" r="0" cx="0" cy="0"
                                                                    class="apexcharts-marker wev9hpc6rk no-pointer-events"
                                                                    stroke="#d13647" fill="#ffe2e5" fill-opacity="1"
                                                                    stroke-width="3" stroke-opacity="0.9"
                                                                    default-marker-size="0"></circle>
                                                        </g>
                                                    </g>
                                                </g>
                                                <g id="SvgjsG1259" class="apexcharts-datalabels" data:realIndex="0"></g>
                                            </g>
                                            <line id="SvgjsLine1299" x1="0" y1="0" x2="505" y2="0" stroke="#b6b6b6"
                                                  stroke-dasharray="0" stroke-width="1"
                                                  class="apexcharts-ycrosshairs"></line>
                                            <line id="SvgjsLine1300" x1="0" y1="0" x2="505" y2="0" stroke-dasharray="0"
                                                  stroke-width="0" class="apexcharts-ycrosshairs-hidden"></line>
                                            <g id="SvgjsG1301" class="apexcharts-yaxis-annotations"></g>
                                            <g id="SvgjsG1302" class="apexcharts-xaxis-annotations"></g>
                                            <g id="SvgjsG1303" class="apexcharts-point-annotations"></g>
                                        </g>
                                        <g id="SvgjsG1282" class="apexcharts-yaxis" rel="0"
                                           transform="translate(-18, 0)"></g>
                                        <g id="SvgjsG1252" class="apexcharts-annotations"></g>
                                    </svg>
                                    <div class="apexcharts-legend" style="max-height: 100px;"></div>
                                    <div class="apexcharts-tooltip apexcharts-theme-light">
                                        <div class="apexcharts-tooltip-title"
                                             style="font-family: Poppins; font-size: 12px;"></div>
                                        <div class="apexcharts-tooltip-series-group" style="order: 1;"><span
                                                class="apexcharts-tooltip-marker"
                                                style="background-color: transparent;"></span>
                                            <div class="apexcharts-tooltip-text"
                                                 style="font-family: Poppins; font-size: 12px;">
                                                <div class="apexcharts-tooltip-y-group"><span
                                                        class="apexcharts-tooltip-text-label"></span><span
                                                        class="apexcharts-tooltip-text-value"></span></div>
                                                <div class="apexcharts-tooltip-z-group"><span
                                                        class="apexcharts-tooltip-text-z-label"></span><span
                                                        class="apexcharts-tooltip-text-z-value"></span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                        class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light">
                                        <div class="apexcharts-yaxistooltip-text"></div>
                                    </div>
                                </div>
                            </div>
                            <!--end::Chart-->
                            <!--begin::Stats-->
                            <div class="card-spacer mt-n25">
                                <!--begin::Row-->
                                <div class="row m-0">
                                    <div class="col bg-light-warning px-6 py-8 rounded-xl mr-7 mb-7">
                                        <h3>{{count($totalUsers)}}</h3><br>
                                        <h6 class="text-warning font-weight-bold font-size-h6">Total Users</h6>
                                    </div>
                                    <div class="col bg-light-primary px-6 py-8 rounded-xl mr-7 mb-7">
                                        <h3>{{count($todayUsers)}}</h3><br>
                                        <h6 class="text-primary font-weight-bold font-size-h6">Today's Users</h6>
                                    </div>
                                    <div class="col bg-light-danger px-6 py-8 rounded-xl mr-7 mb-7">
                                        <h3>{{$activeUsers}}</h3><br>
                                        <a href="#" class="text-danger font-weight-bold font-size-h6 mt-2">
                                            Active Users
                                        </a>
                                    </div>
                                    <div class="col bg-light-success px-6 py-8 rounded-xl mb-7">
                                        <h3>{{$inActiveUsers}}</h3><br>
                                        <a href="#" class="text-success font-weight-bold font-size-h6 mt-2">
                                            In Active Users
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
