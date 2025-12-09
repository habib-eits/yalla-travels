<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class VendorReportController extends Controller
{

    public function index()
    {

        $vendor =  DB::table('report_logs')->leftjoin('user', 'report_logs.user_id', '=', 'user.UserID')
        ->get();
        // dd($vendor);
        return view('umrah.vendor_umrah_index',compact('vendor'));
    }
    public  function VendorUmrahReport()

    {


        $pagetitle = 'Umrah Sale Report';


        $item = DB::table('item')->where('ItemCode', 'like', 'U%')->get();



        return view('umrah.vendor_umrah_report', compact('pagetitle', 'item'));
    }


    public function VendorUmrahReport1(Request $request)
    {
        $pagetitle = 'Umrah Sale Report';

        $request->validate([
            'Type'      => 'required|string', 
            'StartDate' => 'required|date',
            'EndDate'   => 'required|date',
            'ItemID'    => 'nullable|integer',
            'UserID'    => 'nullable|integer',
        ]);

        try {
            DB::beginTransaction();

            $column = $request->Type;

            // 1. Fetch fresh passengers only
            $passengerQuery = DB::table('invoice_detail')
                ->where(function($q){
                    $q->whereNull('vendor_id')
                    ->orWhere('vendor_id', 0);
                })
                ->when($request->ItemID > 0, fn($q) => $q->where('ItemID', $request->ItemID))
                ->whereDate($column, '>=', $request->StartDate)
                ->whereDate($column, '<=', $request->EndDate);

            $passengerIDs = $passengerQuery->pluck('InvoiceDetailID')->toArray();

            if (empty($passengerIDs)) {
                DB::commit();
                $item = DB::table('item')->where('ItemCode', 'like', 'U%')->get();
                $supplier = collect();
                $passengers = collect();
                return view('umrah.vendor_umrah_report1', compact('pagetitle','supplier','item','passengers'));
            }

            // 2. Insert report log
            $reportID = DB::table('report_logs')->insertGetId([
                'user_id' => session('user_id'),
                'generated_time' => now(),
            ]);

            // 3. Update vendor_id for fresh passengers
            DB::table('invoice_detail')
                ->whereIn('InvoiceDetailID', $passengerIDs)
                ->update(['vendor_id' => $reportID]);

            // 4. Fetch updated passengers
            $passengers = DB::table('invoice_detail')
                ->whereIn('InvoiceDetailID', $passengerIDs)
                ->where('vendor_id', $reportID)
                ->get();

            // 5. Fetch supplier list
            $supplierIDs = $passengers->pluck('SupplierID')->unique()->toArray();
            $supplier = DB::table('supplier')
                ->where('SupplierCatID', 3)
                ->whereIn('SupplierID', $supplierIDs)
                ->get();

            // 6. Get items for dropdown
            $item = DB::table('item')
                ->where('ItemCode', 'like', 'U%')
                ->get();

            DB::commit();

            return view('umrah.vendor_umrah_report1', compact('pagetitle','supplier','item','passengers'));

        } catch (\Exception $e) {
            DB::rollBack();
            dd('Error:', $e->getMessage());
        }
    }

    public function show($report_id)
    {
        $pagetitle = 'Vendor Passengers Report';

        // Get passengers linked to this vendor/report
        $passengers = DB::table('invoice_detail')
            ->where('vendor_id', $report_id)
            ->get();

        // Get supplier list for dropdown if needed
        $supplierIDs = $passengers->pluck('SupplierID')->unique()->toArray();
        $supplier = DB::table('supplier')
            ->whereIn('SupplierID', $supplierIDs)
            ->get();

        // Get items for dropdown
        $item = DB::table('item')->where('ItemCode', 'like', 'U%')->get();

        return view('umrah.vendor_show', compact('pagetitle', 'passengers', 'supplier', 'item'));
    }


}