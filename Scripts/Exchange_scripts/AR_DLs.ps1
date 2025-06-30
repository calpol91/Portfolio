# Use this scrip to add or remove users from Distribution Lists (DLs) or 365 Groups in Exchange Online.
# Remember to connect-exchangeonline before running this script.
# Script needs tidying/seperating? 

$mailbox = "mailbox@cswportfol.io" #DL address
$user = "usertoadd@cswportfol.io" #user to add

# !!!! REMEMBER TO COMMENT/UNCOMMENT COMMANDS WHEN READY TO USE !!!!

#add-distributiongroupmember -Identity $mailbox -Member $user #add user to DL

#remove-distributiongroupmember -Identity $mailbox -Member $user #remove user from DL

#Add-UnifiedGroupLinks -Identity $mailbox -LinkType Members -Links $user #add user to 365 group

#Batch Add Users to a DL

$users = Get-Content "C:\path\to\your\file.txt" #Path to your text file containing user emails, one per line
$mailbox = $mailbox

foreach ($user in $users) {
    Add-DistributionGroupMember -Identity $mailbox -Member $user
}

#Batch Remove Users from a DL
<#$users = Get-Content "C:\Users\callum.ward\OneDrive - Kiwa\Documents\WindowsPowershell\GIT_Scripts\Referance_file.txt"
$mailbox = $mailbox

foreach ($user in $users) {
    Remove-DistributionGroupMember -Identity $mailbox -Member $user
}#>

<# List of popular DL's - do not uncomment 
dl_uk.linemanagers@kiwa.com - UK Line Managers - 365


#>

