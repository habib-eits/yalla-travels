@extends('template.tmp')

@section('title', $pagetitle)

@section('content')

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid">

                @if (session('error'))
                    <div class="alert alert-{{ Session::get('class') }} p-1" id="success-alert">
                        {{ Session::get('error') }}
                    </div>
                @endif

                @if (count($errors) > 0)
                    <div class="alert alert-danger p-1 border-3">
                        <p class="font-weight-bold">There were some problems with your input.</p>
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <!-- Search Form -->
                <div class="row">
                    <div class="col-md-12">
                        <form action="{{ URL('/comparison-ItemWiseSale') }}" method="post"
                            class="form-inline w-100 d-flex align-items-center">
                            @csrf
                            <div class="row p-2 rounded-3 w-100">

                                <div class="col-md-3">
                                    <label for="dateRangeSelector" class="form-label">Select Date Range</label>
                                    <select id="dateRangeSelector" name="dateRangeSelector" class="form-select">
                                        <option value="">Select Date Range</option>
                                        <option value="Today">Today</option>
                                        <option value="Yesterday">Yesterday</option>
                                        <option value="This Week">This Week</option>
                                        <option value="This Month">This Month</option>
                                        <option value="This Quarter">This Quarter</option>
                                        <option value="This Year">This Year</option>
                                        <option value="Year to Date">Year to Date</option>
                                        <option value="Previous Week">Previous Week</option>
                                        <option value="Previous Month">Previous Month</option>
                                        <option value="Previous Quarter">Previous Quarter</option>
                                        <option value="Previous Year">Previous Year</option>
                                        <option value="Custom Range">Custom Range</option>
                                    </select>
                                </div>

                                <div class="col-md-2">
                                    <label for="StartDate" class="form-label">Start Date</label>
                                    <input type="date" id="StartDate" name="StartDate" class="form-control"
                                        value="{{ request()->StartDate }}">
                                </div>

                                <div class="col-md-2">
                                    <label for="EndDate" class="form-label">End Date</label>
                                    <input type="date" id="EndDate" name="EndDate" class="form-control"
                                        value="{{ request()->EndDate }}">
                                </div>

                                <div class="col-md-3 text-end mt-4">
                                    <button type="submit" class="btn btn-primary w-100">Generate Report</button>
                                </div>
                                <div class="row mt-3">

                                    <!-- Compare Based On -->
                                    <div class="col-md-3">
                                        <label class="form-label">Compare Based on Period/Year</label>
                                        <select id="compareType" name="compareType" class="form-select">
                                            <option value="" selected disabled>Select Option</option>
                                            <option value="period">Previous Period(s)</option>
                                            <option value="year">Previous Year(s)</option>
                                        </select>
                                    </div>

                                    <!-- Number of Periods/Years -->
                                    <div class="col-md-2">
                                        <label class="form-label">Number of Period/Year(s)</label>
                                        <select id="compareCount" name="compareCount" class="form-select">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                        </select>
                                    </div>

                                    <!-- Sort Option -->
                                    <div class="col-md-3 mt-4 pt-2">
                                        <div class="form-check">
                                            <input type="checkbox" id="sortOrder" name="sortOrder" class="form-check-input">
                                            <label class="form-check-label" for="sortOrder">Arrange from Latest to
                                                Oldest</label>
                                        </div>
                                    </div>

                                    <!-- Apply -->
                                    <div class="col-md-2 mt-4">
                                        <button type="submit" class="btn btn-primary w-100">Apply</button>
                                    </div>

                                </div>


                            </div>

                        </form>

                        <!-- Clear Reports Button -->
                        <form method="post" action="{{ url('/comparison-clear') }}" class="mt-2">
                            @csrf
                            <button class="btn btn-danger">Clear All Reports</button>
                        </form>
                    </div>
                </div>

                {{-- =============================== --}}
{{--     ZOHO STYLE SINGLE TABLE     --}}
{{-- =============================== --}}

@php
    $pivot = [];
    $columns = [];

    foreach ($comparisons as $comp) {
        // Column Label -> Example: 01-01-2024 to 31-01-2024
        $colLabel = date('d-m-Y', strtotime($comp['start'])) . " to " . date('d-m-Y', strtotime($comp['end']));

        $columns[] = $colLabel;

        foreach ($comp['data'] as $row) {
            $item = $row->ItemName;

            if (!isset($pivot[$item])) {
                $pivot[$item] = [];
            }

            $pivot[$item][$colLabel] = [
                'invoice' => $row->Invoice,
                'profit' => $row->Profit,
                'percentage' => $row->Percentage,
                'sales' => $row->Total,
            ];
        }
    }
@endphp

@if(count($comparisons) > 0)
<div class="card mt-4">
    <div class="card-body">
        <h4 class="text-center mb-3">
            Itemwise Comparison
        </h4>

        <div class="table-responsive">
            <table class="table table-bordered table-striped table-sm">
                <thead class="bg-light">
                    <tr>
                        <th>Item Name</th>
                        @foreach($columns as $col)
                            <th class="text-center">{{ $col }}</th>
                        @endforeach
                    </tr>
                </thead>

                <tbody>
                    @foreach($pivot as $itemName => $row)
                        <tr>
                            <td>{{ $itemName }}</td>

                            @foreach($columns as $col)
                                @php
                                    $d = $row[$col] ?? ['invoice' => 0, 'profit' => 0, 'percentage' => 0, 'sales' => 0];
                                @endphp

                                <td class="text-center">
                                    <strong>{{ number_format($d['invoice'], 2) }}</strong><br>
                                    <small>Profit: {{ number_format($d['profit'], 2) }}</small><br>
                                    <small>{{ number_format($d['percentage'], 2) }}%</small><br>
                                    <small>Sales: {{ $d['sales'] }}</small>
                                </td>

                            @endforeach
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

    </div>
</div>
@endif

                <!-- Display All Comparisons -->
                {{-- @foreach ($comparisons as $comparison)
                    <div class="card mt-4">
                        <div class="card-body">
                            <h5 class="text-center mb-3">
                                Itemwise Sale from {{ date('d-m-Y', strtotime($comparison['start'])) }}
                                to {{ date('d-m-Y', strtotime($comparison['end'])) }}
                            </h5>

                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-sm comparisonTable">
                                    <thead class="bg-light">
                                        <tr>
                                            <th width="5%">S.NO</th>
                                            <th width="30%">ITEM NAME</th>
                                            <th width="10%" class="text-center">NO OF SALES</th>
                                            <th width="10%" class="text-center">TOTAL INVOICE</th>
                                            <th width="10%" class="text-center">PROFIT</th>
                                            <th width="10%" class="text-center">PERCENTAGE</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        @php
                                            $total = 0;
                                            $profit = 0;
                                            $invoice = 0;
                                        @endphp
                                        @foreach ($comparison['data'] as $key => $value)
                                            @php
                                                $total += $value->Invoice;
                                                $profit += $value->Profit;
                                                $invoice += $value->Invoice;
                                            @endphp
                                            <tr>
                                                <td align="center">{{ $key + 1 }}</td>
                                                <td>{{ $value->ItemName }}</td>
                                                <td align="center">{{ $value->Total }}</td>
                                                <td align="center">{{ number_format($value->Invoice, 2) }}</td>
                                                <td align="center">{{ number_format($value->Profit, 2) }}</td>
                                                <td align="center">{{ number_format($value->Percentage, 2) }}%</td>
                                            </tr>
                                        @endforeach
                                    </tbody>

                                    <tfoot style="font-weight: bold;">
                                        <tr>
                                            <td colspan="2" class="text-center">Grand Total</td>
                                            <td></td>
                                            <td class="text-center">{{ number_format($invoice, 2) }}</td>
                                            <td class="text-center">{{ number_format($profit, 2) }}</td>
                                            <td></td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                @endforeach --}}

            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $('.comparisonTable').DataTable({
                "paging": false,
                "info": false,
                "ordering": true,
                "searching": false
            });

            $('#dateRangeSelector').on('change', function() {
                let range = $(this).val();
                let startDate = '';
                let endDate = '';

                switch (range) {
                    case "Today":
                        startDate = moment().format("YYYY-MM-DD");
                        endDate = startDate;
                        break;
                    case "Yesterday":
                        startDate = moment().subtract(1, "days").format("YYYY-MM-DD");
                        endDate = startDate;
                        break;
                    case "This Week":
                        startDate = moment().startOf("week").format("YYYY-MM-DD");
                        endDate = moment().endOf("week").format("YYYY-MM-DD");
                        break;
                    case "This Month":
                        startDate = moment().startOf("month").format("YYYY-MM-DD");
                        endDate = moment().endOf("month").format("YYYY-MM-DD");
                        break;
                    case "This Quarter":
                        startDate = moment().startOf("quarter").format("YYYY-MM-DD");
                        endDate = moment().endOf("quarter").format("YYYY-MM-DD");
                        break;
                    case "This Year":
                        startDate = moment().startOf("year").format("YYYY-MM-DD");
                        endDate = moment().endOf("year").format("YYYY-MM-DD");
                        break;
                    case "Year to Date":
                        startDate = moment().startOf("year").format("YYYY-MM-DD");
                        endDate = moment().format("YYYY-MM-DD");
                        break;
                    case "Previous Week":
                        startDate = moment().subtract(1, "week").startOf("week").format("YYYY-MM-DD");
                        endDate = moment().subtract(1, "week").endOf("week").format("YYYY-MM-DD");
                        break;
                    case "Previous Month":
                        startDate = moment().subtract(1, "month").startOf("month").format("YYYY-MM-DD");
                        endDate = moment().subtract(1, "month").endOf("month").format("YYYY-MM-DD");
                        break;
                    case "Previous Quarter":
                        startDate = moment().subtract(1, "quarter").startOf("quarter").format("YYYY-MM-DD");
                        endDate = moment().subtract(1, "quarter").endOf("quarter").format("YYYY-MM-DD");
                        break;
                    case "Previous Year":
                        startDate = moment().subtract(1, "year").startOf("year").format("YYYY-MM-DD");
                        endDate = moment().subtract(1, "year").endOf("year").format("YYYY-MM-DD");
                        break;
                    case "Custom Range":
                        startDate = "";
                        endDate = "";
                        break;
                }

                $('#StartDate').val(startDate);
                $('#EndDate').val(endDate);
            });
        });
    </script>

@endsection
