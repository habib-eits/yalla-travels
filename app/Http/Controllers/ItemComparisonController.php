<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ItemComparisonController extends Controller
{
  public  function CompItemwiseSale()

  {


    $pagetitle = 'Itemwise Sale';
    $item = DB::table('item')->get();



    return view('reports.comparison_itemwise_sale', compact('pagetitle', 'item'));
  }


  public function CompItemwiseSale2(Request $request)
{
    $pagetitle = 'Itemwise Sale';

    // ---------------------------
    // Validate required date input
    // ---------------------------
    if (!$request->StartDate || !$request->EndDate) {
        return back()->with('error', 'Please select Start & End Date');
    }

    // MAIN ARRAY
    $comparisons = [];

    // Convert to Carbon
    $start = Carbon::parse($request->StartDate);
    $end   = Carbon::parse($request->EndDate);

    // -----------------------
    // 1) CURRENT RANGE DATA
    // -------------------------
    $current = DB::table('v_invoice_detail22')
        ->select(
            'ItemName',
            'ItemID',
            DB::raw('count(*) as Total'),
            DB::raw('sum(Total) as Invoice'),
            DB::raw('sum(Service) as Profit'),
            DB::raw('CASE WHEN sum(Total)=0 THEN 0 ELSE sum(Service)/sum(Total)*100 END as Percentage')
        )
        ->whereBetween('Date', [$start, $end])
        ->groupBy('ItemName', 'ItemID')
        ->orderBy('Total', 'desc')
        ->get();

    $comparisons[] = [
        'label' => "Current",
        'start' => $start->toDateString(),
        'end'   => $end->toDateString(),
        'data'  => $current
    ];

    // ----------------------------------------------------
    // IF USER SELECTED COMPARE TYPE (period / year)
    // ----------------------------------------------------
    if ($request->compareType && $request->compareCount) {

        $count = intval($request->compareCount);   // number of periods/years
        $type  = $request->compareType;            // "period" or "year"

        for ($i = 1; $i <= $count; $i++) {

            if ($type == "period") {
                // Previous period (same date range but shifted by months)
                $pStart = $start->copy()->subMonths($i);
                $pEnd   = $end->copy()->subMonths($i);

                $label = "Previous Period $i";

            } elseif ($type == "year") {
                // Previous year(s)
                $pStart = $start->copy()->subYears($i);
                $pEnd   = $end->copy()->subYears($i);

                $label = "Previous Year $i";
            }


            $pdata = DB::table('v_invoice_detail22')
                ->select(
                    'ItemName',
                    'ItemID',
                    DB::raw('count(*) as Total'),
                    DB::raw('sum(Total) as Invoice'),
                    DB::raw('sum(Service) as Profit'),
                    DB::raw('CASE WHEN sum(Total)=0 THEN 0 ELSE sum(Service)/sum(Total)*100 END as Percentage')
                )
                ->whereBetween('Date', [$pStart, $pEnd])
                ->groupBy('ItemName', 'ItemID')
                ->orderBy('Total', 'desc')
                ->get();

            $comparisons[] = [
                'label' => $label,
                'start' => $pStart->toDateString(),
                'end'   => $pEnd->toDateString(),
                'data'  => $pdata
            ];
        }

        // SORT ORDER (optional)
        if ($request->sortOrder) {
            $comparisons = array_reverse($comparisons);
        }

        // RETURN ARRAY FOR TESTING
        // dd($comparisons);
    }
    $pivotData = $this->buildPivotReport($comparisons);

    return view('reports.comparison_itemwise_sale2', compact('pagetitle', 'comparisons', 'pivotData'));
}

private function buildPivotReport($comparisons)
{
    $pivot = [];
    $columns = [];

    foreach ($comparisons as $comp) {

        // Column Label
        $colKey = $comp['label'] . " (" . $comp['start'] . " to " . $comp['end'] . ")";
        $columns[] = $colKey;

        // Fill item rows
        foreach ($comp['data'] as $row) {

            $item = $row->ItemName;

            if (!isset($pivot[$item])) {
                $pivot[$item] = [];
            }

            // You can switch Invoice → Profit if needed
            $pivot[$item][$colKey] = [
                'invoice' => $row->Invoice,
                'profit' => $row->Profit,
                'percentage' => $row->Percentage
            ];
        }
    }

    return [
        'columns' => $columns,
        'pivot' => $pivot
    ];
}


    // Optional: Clear all stored reports
    public function clear()
    {
        session()->forget('comparisons');
        return redirect('/comparison-ItemWiseSale1');
    }
}
