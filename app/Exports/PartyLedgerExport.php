<?php

namespace App\Exports;

use Illuminate\Support\Facades\DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithTitle;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
use Maatwebsite\Excel\Concerns\WithStyles;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;

class PartyLedgerExport implements FromView,WithTitle,WithColumnWidths
{
    protected $PartyID;
    protected $StartDate;
    protected $EndDate;

    public function __construct($PartyID, $StartDate, $EndDate)
    {

        $this->PartyID = $PartyID;
        $this->StartDate = $StartDate;
        $this->EndDate = $EndDate;
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

        $pagetitle = 'Party Ledger';




        $sql = DB::table('journal')
            ->select(DB::raw('sum(if(ISNULL(Dr),0,Dr)-if(ISNULL(Cr),0,Cr)) as Balance'))
            ->where('PartyID', $this->PartyID)
            ->where('Date', '<', $this->StartDate)
            // ->whereBetween('date',array($this->StartDate,$this->EndDate))

            ->get();

        $sql[0]->Balance = ($sql[0]->Balance == null) ? '0' :  $sql[0]->Balance;

        $supplier = DB::table('party')->where('PartyID', $this->PartyID)->get();

        $journal = DB::table('v_journal')->where('PartyID', $this->PartyID)
            ->whereBetween('Date', array($this->StartDate, $this->EndDate))
            ->orderBy('Date', 'asc')
            ->get();

        return View('party_ledger_excel', compact('journal', 'pagetitle', 'sql', 'supplier'));
    }
}