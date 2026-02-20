$RuleName = "STARSYSTEMS_NETWORKHANDLE_STUN"

# Check if rule exists
$ExistingRule = Get-NetFirewallRule -DisplayName $RuleName -ErrorAction SilentlyContinue

if (-not $ExistingRule) {
    
    New-NetFirewallRule `
        -DisplayName $RuleName `
        -Direction Outbound `
        -Action Block `
        -Protocol UDP `
        -LocalPort 3478

}
else {
    Exit-PSHostProcess
}
