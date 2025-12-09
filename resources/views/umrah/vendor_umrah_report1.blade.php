@extends('template.tmp')

@section('title', 'Umrah Report')

@section('content')

<?php
$users = DB::table('user')->get();
?>

<div class="main-content">
    <div class="page-content">
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center ">
                        <h4 class="mb-sm-0 font-size-18">VENDOR SALE REPORT</h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->

            @if ($supplier->isNotEmpty())

                @foreach ($supplier as $sup)
                    <?php
                    $query = DB::table('v_invoice_detail_umrah')
                        ->where('SupplierID', $sup->SupplierID)
                        ->whereBetween(request()->Type, [request()->StartDate, request()->EndDate]);

                    if (request()->ItemID > 0) {
                        $query->where('ItemID', request()->ItemID);
                    }

                    if (request()->UserID > 0) {
                        $query->where('UserID', request()->UserID);
                    }

                    // ❌ Removed vendor_id filter so updated records also show
                    $invoice_detail = $query->get();
                    ?>

                    <div class="card shadow-sm ">
                        <div class="card-body border-success border-top border-3 rounded-top">
                            <div class="row">
                                <div class="col-md-6">
                                    <h3>{{ $sup->SupplierName }}</h3>
                                </div>
                                <div class="col-md-6 text-end">
                                    <div class="dropdown">
                                        <button class="btn btn-danger dropdown-toggle waves-effect waves-light"
                                            type="button" id="dropdownMenuButton" data-bs-toggle="dropdown"
                                            aria-expanded="false">
                                            Export Options
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end"
                                            aria-labelledby="dropdownMenuButton">
                                            <li>
                                                <a class="dropdown-item"
                                                    href="{{ URL('/UmrahReport1PDF') . '/' . $sup->SupplierID . '/' . request()->StartDate . '/' . request()->EndDate . '/' . request()->Type . '/' . request()->ItemID }}">
                                                    <i class="mdi mdi-file-pdf-outline label-icon"></i> Export PDF
                                                </a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item"
                                                    href="{{ URL('/UmrahReport2PDF') . '/' . $sup->SupplierID . '/' . request()->StartDate . '/' . request()->EndDate . '/' . request()->Type . '/' . request()->ItemID }}">
                                                    <i class="mdi mdi-file-pdf-outline label-icon"></i> For Vendor
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        @php
                            $totalUmrahFare = $totalFare = $totalService = $totalVAT = $totalInvoice = $totalPaid = $totalPaymentInBus = 0;
                        @endphp

                        @if ($invoice_detail->isNotEmpty())
                            <div class="table-responsive">
                                <table class="table table-sm table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th class="text-center">S.No</th>
                                            <th class="text-center">INV#</th>
                                            <th class="text-left">Saleman</th>
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
                            <p class="text-danger">No data found</p>
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
