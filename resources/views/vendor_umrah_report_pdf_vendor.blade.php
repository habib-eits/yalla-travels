<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PDF</title>
    <style type="text/css">
        @page {
            margin-top: 100px;
            margin-bottom: 100px;
            margin-left: 0.4cm;
            margin-right: 0.4cm;
        }

        body,
        td,
        th {
            font-size: 10pt;
            font-family: Arial, Helvetica, sans-serif;
        }

        .noborder_table {
            border-left: 0;
            border-right: 0;
            border-top: 0;
            border-bottom: 0;
            border-collapse: collapse;
        }

        .noborder_table td,
        .noborder_table th {
            border: 0;
        }

        table {
            border-left: 0.01em solid #ccc;
            border-right: 0;
            border-top: 0.01em solid #ccc;
            border-bottom: 0;
            border-collapse: collapse;
        }

        table td,
        table th {
            border-left: 0;
            border-right: 0.01em solid #ccc;
            border-top: 0;
            border-bottom: 0.01em solid #ccc;
        }

        header {
            position: fixed;
            top: -95px;
            left: 0px;
            right: 0px;
            height: auto;
            font-size: 20px !important;
            text-align: left;
        }

        footer {
            position: fixed;
            bottom: -90px;
            left: 0px;
            right: 0px;
            height: auto;
            font-size: 13px !important;
            border-top: 1px solid black;
            text-align: center;
            padding-top: 0px;
        }
    </style>
</head>

<body>

    <header>
        <img src="{{ public_path('assets/images/logo/ft.png') }}" alt="Logo" style="height: 80px;">
    </header>

    <footer style="text-align: center;">
        Address: Shop #89 Al Ameed Plaza Alqouz 4, Dubai U.A.E <br>
        Landline: +971 4 880 7551 | Mobile: +971 55 575 1344<br>
        Email: info@falaktravel.com
    </footer>

    <table class="noborder_table" align="right" style="margin-top: -75px;">
        <tr>
            <td align="right"><strong>STATEMENT OF ACCOUNTS</strong></td>
        </tr>
        <tr>
            <td align="right">Supplier: <strong>{{ $supplier->SupplierName }}</strong></td>
        </tr>
        <tr>
            <td align="right">
                Date <strong>
                    {{ $report ? date('d-m-Y', strtotime($report->departure_start)) : 'N/A' }}
                </strong> to <strong>
                    {{ $report ? date('d-m-Y', strtotime($report->departure_end)) : 'N/A' }}
                </strong>
            </td>
        </tr>
        <tr>
            <td align="right">Report Type: <strong>Departure Date</strong></td>
        </tr>
    </table>

    @php
        $totalPaymentInBus = 0;
        $no = 0;

        // Custom order
        $customOrder = ['Sharja', 'Dubai', 'Abu Dahbi', 'Jebel Ali'];
        $records = $records
            ->sortBy(function ($item) use ($customOrder) {
                $pos = array_search($item->PickPoint, $customOrder);
                return $pos === false ? 999 : $pos;
            })
            ->values();
    @endphp

    @if ($records->count() > 0)
        <table border="1" class="table-bordered" style="width: 100% !important;">
            <thead style="background-color: #e9e9e9;">
                <tr>
                    <th width="2">S.No</th>
                    <th width="5">INV#</th>
                    <th width="70" align="left">Saleman</th>
                    <th width="70">Pax Name</th>
                    <th width="10">Passport</th>
                    <th width="10">Nationality</th>
                    <th width="30">Pick Point</th>
                    <th width="30">Room Type</th>
                    <th width="30">Visa Type</th>
                    <th width="30">Date of <br>Departure</th>
                    <th width="10">Pay In Bus</th>
                    <th width="10">Passport</th>
                    <th width="10">Emirate ID <br>Front</th>
                    <th width="10">Emirate ID <br>Back</th>
                    <th width="10">PictureFile</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($records as $r)
                    @php
                        $no++;
                        $totalPaymentInBus += $r->PaymentInBus;
                    @endphp
                    <tr>
                        <td align="center">{{ $no }}</td>
                        <td align="center">{{ $r->InvoiceMasterID }}</td>
                        <td>{{ $r->SalemanName }}</td>
                        <td>{{ $r->PaxName }}</td>
                        <td>{{ $r->Passport }}</td>
                        <td>{{ $r->Nationality }}</td>
                        <td align="center">{{ $r->PickPoint }}</td>
                        <td align="center">{{ $r->RoomType }}</td>
                        <td align="center">{{ $r->VisaType }}</td>
                        <td align="center">{{ date('d-m-Y', strtotime($r->DepartureDate)) }}</td>
                        <td align="center">{{ number_format($r->PaymentInBus) }}</td>
                        <td align="center">
                            @if ($r->PassportFile)
                                <a href="{{ asset($r->PassportFile) }}" download>Download</a>
                            @else
                                No File
                            @endif
                        </td>
                        <td align="center">
                            @if ($r->EmirateIDFileFront)
                                <a href="{{ asset($r->EmirateIDFileFront) }}" download>Download</a>
                            @else
                                No File
                            @endif
                        </td>
                        <td align="center">
                            @if ($r->EmirateIDFileBack)
                                <a href="{{ asset($r->EmirateIDFileBack) }}" download>Download</a>
                            @else
                                No File
                            @endif
                        </td>
                        <td align="center">
                            @if ($r->PictureFile)
                                <a href="{{ asset($r->PictureFile) }}" download>Download</a>
                            @else
                                No File
                            @endif
                        </td>
                    </tr>
                @endforeach
                <tr style="background-color: #e9e9e9; font-weight: bolder;">
                    <td colspan="10" align="center"><strong>Total ({{ $no }} Umrah)</strong></td>
                    <td align="center">{{ number_format($totalPaymentInBus) }}</td>
                    <td colspan="4"></td>
                </tr>
            </tbody>
        </table>
    @else
        <p class="text-danger">No data found</p>
    @endif

    <script type="text/php">
    if (isset($pdf)) {
        $x = 780;
        $y = 540;
        $text = "Page {PAGE_NUM} of {PAGE_COUNT}";
        $font = $fontMetrics->get_font("helvetica", "normal");
        $size = 9;
        $color = array(0,0,0);
        $pdf->page_text($x, $y, $text, $font, $size, $color);
    }
</script>

</body>

</html>
