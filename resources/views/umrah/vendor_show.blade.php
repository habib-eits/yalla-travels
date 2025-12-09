@extends('template.tmp')

@section('title', $pagetitle)

@section('content')

<?php
$users = DB::table('user')->get();
?>

<div class="main-content">
    <div class="page-content">
        <div class="container-fluid">

            <!-- Page Title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center ">
                        <h4 class="mb-sm-0 font-size-18">{{ $pagetitle }}</h4>

                        <div class="page-title-right">
                            <form action="{{ URL('/VendorReportFilter') }}" method="post" class="form-inline w-100 d-flex align-items-center">
                                @csrf

                                <div class="col-md-3">
                                    <div class="form-group mx-2">
                                        <label for="UserID">Salesman</label>
                                        <select name="UserID" id="UserID" class="form-select">
                                            <option value="">Any</option>
                                            @foreach ($users as $value)
                                                <option value="{{ $value->UserID }}"
                                                    {{ request()->UserID == $value->UserID ? 'selected' : '' }}>
                                                    {{ $value->FullName }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group mx-2">
                                        <label for="ItemID">Item</label>
                                        <select name="ItemID" id="ItemID" class="form-control">
                                            <option value="">Any</option>
                                            @foreach ($item as $value)
                                                <option value="{{ $value->ItemID }}"
                                                    {{ request()->ItemID == $value->ItemID ? 'selected' : '' }}>
                                                    {{ $value->ItemName }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="form-group mx-2">
                                        <label for="Type">Report Type</label>
                                        <select name="Type" id="Type" class="form-control">
                                            <option value="Date" {{ request()->Type == 'Date' ? 'selected' : '' }}>Invoice Date</option>
                                            <option value="DepartureDate" {{ request()->Type == 'DepartureDate' ? 'selected' : '' }}>Departure Date</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group mx-2">
                                        <label for="StartDate">From Date</label>
                                        <input type="date" class="form-control" name="StartDate" value="{{ request()->StartDate }}">
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group mx-2">
                                        <label for="EndDate">Till Date</label>
                                        <input type="date" class="form-control" name="EndDate" value="{{ request()->EndDate }}">
                                    </div>
                                </div>

                                <div class="form-group d-flex">
                                    <button type="submit" class="btn btn-success mt-4">Filter</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Supplier & Passengers Table -->
            @if ($supplier->isNotEmpty())
                @foreach ($supplier as $sup)
                    @php
                        $invoice_detail = $passengers->where('SupplierID', $sup->SupplierID);
                        $totalUmrahFare = $totalFare = $totalService = $totalVAT = $totalInvoice = $totalPaid = $totalPaymentInBus = 0;
                    @endphp

                    <div class="card shadow-sm mb-3">
                        <div class="card-body border-success border-top border-3 rounded-top d-flex justify-content-between align-items-center">
                            <h5>{{ $sup->SupplierName }}</h5>
                            <div class="dropdown">
                                <button class="btn btn-danger dropdown-toggle waves-effect waves-light" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                    Export Options
                                </button>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton">
                                    <li>
                                        <a class="dropdown-item" href="{{ URL('/UmrahReport1PDF') . '/' . $sup->SupplierID }}">
                                            <i class="mdi mdi-file-pdf-outline label-icon"></i> Export PDF
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        @if ($invoice_detail->isNotEmpty())
                            <div class="table-responsive">
                                <table class="table table-sm table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th class="text-center">S.No</th>
                                            <th class="text-center">INV#</th>
                                            <th>Saleman</th>
                                            <th class="text-center">Pax Name</th>
                                            <th class="text-center">Contact</th>
                                            <th class="text-center">Passport</th>
                                            <th class="text-center">Nationality</th>
                                            <th class="text-center">Pick Point</th>
                                            <th class="text-center">Room Type</th>
                                            <th class="text-center">Visa Type</th>
                                            <th class="text-center">Departure Date</th>
                                            <th class="text-center">Umrah Fare</th>
                                            <th class="text-center">Fare</th>
                                            <th class="text-center">Service</th>
                                            <th class="text-center">VAT5%</th>
                                            <th class="text-center">Invoice</th>
                                            <th class="text-center">Paid</th>
                                            <th class="text-center">Pay In Bus</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($invoice_detail as $key => $detail)
                                            @php
                                                $totalUmrahFare += $detail->UmrahFare;
                                                $totalFare += $detail->Fare;
                                                $totalService += $detail->Service;
                                                $totalVAT += $detail->Taxable;
                                                $totalInvoice += $detail->Total;
                                                $totalPaid += $detail->Paid;
                                                $totalPaymentInBus += $detail->PaymentInBus;
                                            @endphp
                                            <tr>
                                                <td class="text-center">{{ $key + 1 }}</td>
                                                <td class="text-center">
                                                    <a href="{{ URL('/UmrahPDF/' . $detail->InvoiceMasterID) }}" target="_blank">
                                                        {{ $detail->InvoiceMasterID }}
                                                    </a>
                                                </td>
                                                <td>{{ $detail->SalemanName ?? '-' }}</td>
                                                <td>{{ $detail->PaxName }}</td>
                                                <td class="text-center">{{ $detail->Contact }}</td>
                                                <td class="text-center">{{ $detail->Passport }}</td>
                                                <td class="text-center">{{ $detail->Nationality }}</td>
                                                <td class="text-center">{{ $detail->PickPoint }}</td>
                                                <td class="text-center">{{ $detail->RoomType }}</td>
                                                <td class="text-center">{{ $detail->VisaType }}</td>
                                                <td class="text-center">{{ dateformatman($detail->DepartureDate) }}</td>
                                                <td class="text-center">{{ number_format($detail->UmrahFare, 2) }}</td>
                                                <td class="text-center">{{ number_format($detail->Fare, 2) }}</td>
                                                <td class="text-center">{{ number_format($detail->Service, 2) }}</td>
                                                <td class="text-center">{{ number_format($detail->Taxable, 2) }}</td>
                                                <td class="text-center">{{ number_format($detail->Total, 2) }}</td>
                                                <td class="text-center">{{ number_format($detail->Paid, 2) }}</td>
                                                <td class="text-center">{{ number_format($detail->PaymentInBus, 2) }}</td>
                                            </tr>
                                        @endforeach
                                        <tr class="fw-bolder bg-danger bg-soft bg-gradient">
                                            <td colspan="11" class="text-center">Total</td>
                                            <td class="text-center">{{ number_format($totalUmrahFare, 2) }}</td>
                                            <td class="text-center">{{ number_format($totalFare, 2) }}</td>
                                            <td class="text-center">{{ number_format($totalService, 2) }}</td>
                                            <td class="text-center">{{ number_format($totalVAT, 2) }}</td>
                                            <td class="text-center">{{ number_format($totalInvoice, 2) }}</td>
                                            <td class="text-center">{{ number_format($totalPaid, 2) }}</td>
                                            <td class="text-center">{{ number_format($totalPaymentInBus, 2) }}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        @else
                            <p class="text-danger m-3">No passengers found for this supplier.</p>
                        @endif
                    </div>
                @endforeach
            @else
                <p class="text-danger">No record found</p>
            @endif

        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#StartDate').on('change', function() {
            var startDate = $(this).val();
            var endDate = $('#EndDate').val();
            if (!endDate || new Date(endDate) < new Date(startDate)) {
                $('#EndDate').val(startDate);
            }
            $('#EndDate').attr('min', startDate);
        });
    });
</script>

@endsection
