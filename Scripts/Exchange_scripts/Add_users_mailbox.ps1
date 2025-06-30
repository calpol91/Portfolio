$mailbox = "mailbox@cswportfol.io" #DL address
$users = Get-Content "C:\Path\to\users.txt" #Path to the text file containing user email addresses
foreach ($user in $users) {
    Add-MailboxPermission -Identity $mailbox -User $user -AccessRights FullAccess -InheritanceType All
    Add-RecipientPermission -Identity $mailbox -Trustee $user -AccessRights SendAs
}

#tested, working