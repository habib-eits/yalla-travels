<?php

namespace App\Exports;

use Illuminate\Support\Facades\DB;

//export
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\WithTitle;
use Maatwebsite\Excel\Concerns\WithColumnWidths;

class PartyLedgerExcel implements FromView, WithTitle, WithColumnWidths
{
    protected $PartyID;
    protected $StartDate;
    protected $EndDate;
    protected $VoucherTypeID;
    protected $ChartOfAccountID;

    public function __construct($PartyID, $StartDate, $EndDate, $VoucherTypeID = 0, $ChartOfAccountID = 0)
    {
       $this->PartyID = $PartyID;
        $this->StartDate = $StartDate;
        $this->EndDate = $EndDate;
        $this->VoucherTypeID = $VoucherTypeID;
        $this->ChartOfAccountID = $ChartOfAccountID;
    }

    public function columnWidths(): array
    {
        return [
            'A' => 15,
            'B' => 15,
            'C' => 10,
            'D' => 60,
            'E' => 15,
            'F' => 15,
            'G' => 15,
            'H' => 15,
        ];
    }

    public function title(): string
    {
        return 'PartyLedger';
    }

    public function view(): View
    {
        // Build same WHERE conditions as page
        $where = [];

        // Voucher type
        if ($this->VoucherTypeID > 0) {
            $vouchertype = DB::table('voucher_type')->where('VoucherTypeID', $this->VoucherTypeID)->first();
            $where['JournalType'] = $vouchertype->VoucherCode;
        }

        // Party
        $where['PartyID'] = $this->PartyID;

        // Chart Of Account
        if ($this->ChartOfAccountID > 0) {
            $where['ChartOfAccountID'] = $this->ChartOfAccountID;
        }

        // Opening balance
        $sql = DB::table('journal')
            ->select(DB::raw('SUM(IFNULL(Dr,0) - IFNULL(Cr,0)) AS Balance'))
            ->where($where)
            ->where('Date', '<', $this->StartDate)
            ->get();

        $sql[0]->Balance = $sql[0]->Balance ?? 0;

        // Party
        $party = DB::table('party')->where('PartyID', $this->PartyID)->get();

        // Ledger records
        $journal = DB::table('v_journal')
            ->where($where)
            ->whereBetween('Date', [$this->StartDate, $this->EndDate])
            ->orderBy('Date', 'asc')
            ->orderBy('JournalID', 'asc')
            ->get();

        return view('party_ledger_excel', compact('journal', 'sql', 'party'));
    }
}
