<?php

namespace App\Imports;

use App\Models\Ledger;
use Maatwebsite\Excel\Concerns\ToModel;

class PartyLedgerImport implements ToModel
{
    public function model(array $row)
    {
        return new Ledger([
            'date' => $row[0],
            'party_name' => $row[1],
            'description' => $row[2],
            'debit' => $row[3],
            'credit' => $row[4],
        ]);
    }
}

