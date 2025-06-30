# Connect to Exchange Online
# Connect-ExchangeOnline

# Specify the mailbox to check
$mailbox = "mailbox@cswportfol.io"  # Change to the mailbox you want to check

#hash one of the below out to avoid errors

# for a DL 
# Get-DistributionGroupMember -Identity $mailbox

# for a mailbox (shared or user)
Get-MailboxPermission -Identity $mailbox

#tested, working