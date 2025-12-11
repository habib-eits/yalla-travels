<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Party Ledger</title>
</head>
<body>

@php 
    $DrTotal = 0;
    $CrTotal = 0;
    $balance = $sql[0]->Balance ?? 0;
@endphp


@if(count($journal) > 0)

<table width="100%" border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse;">
	<thead>
	<tr>
		<th>DATE</th>
		<th>VHNO</th>
		<th>Type</th>
		<th>Description</th>
		<th>DR</th>
		<th>CR</th>
		<th>Balance</th>
	</tr>
	</thead>

	<tbody>

	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td>Opening Balance</td>
		<td></td>
		<td></td>
		<td align="right">{{ $balance }}</td>
	</tr>

	@foreach ($journal as $value)

	@php
	    $balance += ($value->Dr - $value->Cr);
	    $DrTotal += $value->Dr;
	    $CrTotal += $value->Cr;
	@endphp

	<tr>
		<td>{{ dateformatman($value->Date) }}</td>
		<td align="center">{{ $value->VHNO }}</td>
		<td align="center">{{ $value->JournalType }}</td>
		<td>{{ $value->Narration }}</td>

		<td align="right">
			{{ $value->Dr == 0 ? '' : number_format($value->Dr, 2) }}
		</td>

		<td align="right">
			{{ $value->Cr == 0 ? '' : number_format($value->Cr, 2) }}
		</td>

		<td align="right">
			{{ $balance }} {{ $balance > 0 ? 'DR' : 'CR' }}
		</td>
	</tr>

	@endforeach

	<tr>
		<td></td>
		<td></td>
		<td align="center">TOTAL</td>
		<td></td>
		<td align="right">{{ number_format($DrTotal, 2) }}</td>
		<td align="right">{{ number_format($CrTotal, 2) }}</td>
		<td></td>
	</tr>

	</tbody>
</table>

@else

<p class="text-danger">No data found</p>

@endif

</body>
</html>