<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use PDF;

class VendorReportController extends Controller
{
    public function index(Request $request)
    {
        try {
            $reports = DB::table('vendor_reports')
                ->leftJoin('user', 'vendor_reports.generated_by', '=', 'user.UserID')
                ->select(
                    'vendor_reports.*',
                    'user.FullName as generated_by_name'
                )
                ->latest()
                ->get();

            return view('vendor_reports_index', compact('reports'));
        } catch (\Exception $e) {
            return back()
                ->with('error', 'Failed to load vendor reports: ' . $e->getMessage())
                ->with('class', 'danger');
        }
    }

    public function VendorUmrahReport()
    {
        $pagetitle = 'Vendor Umrah Report';

        $item = DB::table('item')->where('ItemCode', 'like', 'U%')->get();
        $users = DB::table('user')->get();

        return view('vendor_report', compact('pagetitle', 'item', 'users'));
    }

    // Step 1: Preview Only (No Locking)
    public function VendorReportPreview(Request $request)
    {
        $pagetitle = 'Vendor Umrah Report';

        $request->validate([
            'StartDate'   => 'required|date',
            'EndDate'     => 'required|date|after_or_equal:StartDate',
            'Type'        => 'required|in:Date,DepartureDate',
            'GeneratedBy' => 'nullable|exists:user,UserID',
            'ItemID'      => 'nullable|integer',
            'UserID'      => 'nullable|integer',
        ]);

        $dateColumn = $request->Type === 'DepartureDate' ? 'DepartureDate' : 'Date';

        $suppliers = DB::table('supplier')
            ->where('SupplierCatID', 3)
            ->get();

        $report_data = [];
        $foundRecords = false;

        foreach ($suppliers as $sup) {
            $query = DB::table('v_invoice_detail_umrah')
                ->where('SupplierID', $sup->SupplierID)
                ->whereNull('vendor_report_id')  // Only unlocked records
                ->whereBetween($dateColumn, [$request->StartDate, $request->EndDate]);

            if ($request->filled('ItemID') && $request->ItemID > 0) {
                $query->where('ItemID', $request->ItemID);
            }
            if ($request->filled('UserID') && $request->UserID > 0) {
                $query->where('UserID', $request->UserID);
            }

            $records = $query->get();

            if ($records->count() > 0) {
                $foundRecords = true;
                $report_data[] = [
                    'supplier' => $sup,
                    'records'  => $records
                ];
            }
        }

        return view('vendor_umrah_report', compact('pagetitle', 'report_data'))
            ->with(
                'info',
                $foundRecords
                    ? 'Preview Mode - Click "Generate & Lock Report" to save and lock these records.'
                    : 'No unlocked records found for the selected criteria.'
            );
    }

    // Step 2: Final Generate & Lock
    public function VendorReportLock(Request $request)
    {
        $request->validate([
            'StartDate'   => 'required|date',
            'EndDate'     => 'required|date|after_or_equal:StartDate',
            'Type'        => 'required|in:Date,DepartureDate',
            'GeneratedBy' => 'nullable|exists:user,UserID',
            'ItemID'      => 'nullable|integer',
            'UserID'      => 'nullable|integer',
        ]);

        $dateColumn = $request->Type === 'DepartureDate' ? 'DepartureDate' : 'Date';

        // Create report entry
        $reportId = DB::table('vendor_reports')->insertGetId([
            'generated_by'      => $request->GeneratedBy,
            'departure_start'   => $request->StartDate,
            'departure_end'     => $request->EndDate,
            'generated_date'    => now()->toDateString(),
            'created_at'        => now(),
            'updated_at'        => now(),
        ]);

        $generatedByName = DB::table('user')
            ->where('UserID', $request->GeneratedBy)
            ->value('FullName') ?? 'Unknown User';

        $suppliers = DB::table('supplier')
            ->where('SupplierCatID', 3)
            ->get();

        $totalLocked = 0;

        foreach ($suppliers as $sup) {
            $query = DB::table('v_invoice_detail_umrah')
                ->where('SupplierID', $sup->SupplierID)
                ->whereNull('vendor_report_id')
                ->whereBetween($dateColumn, [$request->StartDate, $request->EndDate]);

            if ($request->filled('ItemID') && $request->ItemID > 0) {
                $query->where('ItemID', $request->ItemID);
            }
            if ($request->filled('UserID') && $request->UserID > 0) {
                $query->where('UserID', $request->UserID);
            }

            $records = $query->get();

            if ($records->count() > 0) {
                $totalLocked += $records->count();

                DB::table('invoice_detail')
                    ->whereIn('InvoiceDetailID', $records->pluck('InvoiceDetailID'))
                    ->update(['vendor_report_id' => $reportId]);
            }
        }

        if ($totalLocked === 0) {
            // Delete empty report
            DB::table('vendor_reports')->where('id', $reportId)->delete();
            return redirect()->back()->with('error', 'No records to lock!')->with('class', 'danger');
        }

        return redirect('/VendorReports/' . $reportId)
            ->with('success', "Vendor Report #$reportId successfully generated and locked by <strong>$generatedByName</strong>! ($totalLocked records)");
    }

    public function VendorReportView($id)
    {
        $pagetitle = 'Vendor Umrah Report';

        // Get the report details
        $report = DB::table('vendor_reports')
            ->leftJoin('user', 'vendor_reports.generated_by', '=', 'user.UserID')
            ->where('vendor_reports.id', $id)
            ->select('vendor_reports.*', 'user.FullName as generated_by_name')
            ->first();

        if (!$report) {
            return back()->with('error', 'Report not found!')->with('class', 'danger');
        }

        $suppliers = DB::table('supplier')
            ->where('SupplierCatID', 3)
            ->get();

        $report_data = [];

        foreach ($suppliers as $sup) {

            $records = DB::table('v_invoice_detail_umrah')
                ->where('SupplierID', $sup->SupplierID)
                ->where('vendor_report_id', $id)
                ->get();

            if ($records->count() > 0) {
                $report_data[] = [
                    'supplier' => $sup,
                    'records'  => $records
                ];
            }
        }

        return view('vendor_umrah_report', compact('pagetitle', 'report_data', 'report'))
            ->with('success', "Viewing Vendor Report #$id - Generated by <strong>{$report->generated_by_name}</strong> on " .
                \Carbon\Carbon::parse($report->generated_date)->format('d-m-Y'));
    }

    public function VendorReportPDF($id)
    {
        // Get report info
        $report = DB::table('vendor_reports')
            ->leftJoin('user', 'vendor_reports.generated_by', '=', 'user.UserID')
            ->where('vendor_reports.id', $id)
            ->select('vendor_reports.*', 'user.FullName as generated_by_name')
            ->first();

        if (!$report) {
            return redirect()->back()->with('error', 'Report not found!')->with('class', 'danger');
        }

        $suppliers = DB::table('supplier')
            ->where('SupplierCatID', 3)
            ->get();

        $report_data = [];

        foreach ($suppliers as $sup) {
            $records = DB::table('v_invoice_detail_umrah')
                ->where('SupplierID', $sup->SupplierID)
                ->where('vendor_report_id', $id)
                ->get();

            if ($records->count() > 0) {
                $report_data[] = [
                    'supplier' => $sup,
                    'records'  => $records
                ];
            }
        }

        $company = DB::table('company')->where('CompanyID', 1)->first();

        $pdf = PDF::loadView('vendor_umrah_report_pdf', compact('report_data', 'report', 'company'));

        $pdf->setPaper('A4', 'portrait');

        return $pdf->stream('Vendor_Report_' . $id . '.pdf');
    }

    public function VendorReportSupplierPDF($report_id, $supplier_id)
    {
        return $this->generateSupplierPDF($report_id, $supplier_id, 'normal');
    }

    public function VendorReportSupplierVendorPDF($report_id, $supplier_id)
    {
        return $this->generateSupplierPDF($report_id, $supplier_id, 'vendor');
    }

    private function generateSupplierPDF($report_id, $supplier_id, $type = 'normal')
    {
        // Handle 'new' case from fresh generation
        if ($report_id === 'new') {
            $report = null;
        } else {
            $report = DB::table('vendor_reports')
                ->leftJoin('user', 'vendor_reports.generated_by', '=', 'user.UserID')
                ->where('vendor_reports.id', $report_id)
                ->select('vendor_reports.*', 'user.FullName as generated_by_name')
                ->first();

            if (!$report) {
                return redirect()->back()->with('error', 'Report not found!')->with('class', 'danger');
            }
        }

        $supplier = DB::table('supplier')->where('SupplierID', $supplier_id)->first();
        if (!$supplier) {
            return redirect()->back()->with('error', 'Supplier not found!')->with('class', 'danger');
        }

        $query = DB::table('v_invoice_detail_umrah')
            ->where('SupplierID', $supplier_id)
            ->whereIn('ItemCode', ['UA', 'UB']);

        if ($report_id !== 'new') {
            $query->where('vendor_report_id', $report_id);
        }

        $records = $query->get();

        if ($records->isEmpty()) {
            return redirect()->back()->with('error', 'No records found for this supplier.')->with('class', 'danger');
        }

        $company = DB::table('company')->where('CompanyID', 1)->first();

        $blade = $type === 'vendor' ? 'vendor_umrah_report_pdf_vendor' : 'vendor_umrah_report_pdf_supplier';

        $pdf = PDF::loadView($blade, compact('report', 'supplier', 'records', 'company', 'type', 'report_id'));

        if ($type === 'vendor') {
            $pdf->setPaper('A4', 'landscape');
        } else {
            $pdf->setPaper('A4', 'portrait');
        }

        $filename = "Vendor_Report_" . ($report ? $report->id : 'New') . "_Supplier_{$supplier_id}" . ($type === 'vendor' ? '_For_Vendor' : '') . ".pdf";

        return $pdf->download($filename);  // Force download like your old code
    }
}
