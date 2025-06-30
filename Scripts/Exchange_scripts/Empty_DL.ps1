# Remove all members from a distribution list - use with caution!
# connect-exchangeonline first 

# Set the distribution list email or name
$dl = "mailbox@cswportfol.io"  # Change to your DL

# Get all members of the distribution list
$members = Get-DistributionGroupMember -Identity $dl

foreach ($member in $members) {
    Remove-DistributionGroupMember -Identity $dl -Member $member.PrimarySmtpAddress -Confirm:$false
}

Write-Host "All members removed from $dl."