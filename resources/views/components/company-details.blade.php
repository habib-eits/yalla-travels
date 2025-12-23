<div >
    <div style="padding:5px; white-space: nowrap;">
    <img src="{{ asset('assets/svg/location.svg') }}"
         style="width:14px; height:14px; vertical-align: middle; margin-right:3px;">
    <span style="vertical-align: middle;">
        {{ $company->Address }}
    </span>
</div>
<div style="padding:5px; white-space: nowrap;">
    <img src="{{ asset('assets/svg/call.svg') }}"
         style="width:14px; height:14px; vertical-align: middle; margin-right:3px;">
    <span style="vertical-align: middle;">
        {{ $company->Contact }}
    </span>
</div>
@if($company->Mobile)
<div style="padding:5px; white-space: nowrap;">
    <img src="{{ asset('assets/svg/call.svg') }}"
         style="width:14px; height:14px; vertical-align: middle; margin-right:3px;">
    <span style="vertical-align: middle;">
        {{ $company->Mobile }}
    </span>
</div>
@endif
<div style="padding:5px; white-space: nowrap;">
    <img src="{{ asset('assets/svg/email.svg') }}"
         style="width:14px; height:14px; vertical-align: middle; margin-right:3px;">
    <span style="vertical-align: middle;">
        {{ $company->Email }}
    </span>
</div>

</div>
