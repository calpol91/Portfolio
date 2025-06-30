<# Create a shared mailbox in Exchange Online

# Set mailbox details
$displayName = "Shared Mailbox Name"
$alias = "sharedmailbox"
$email = "sharedmailbox@yourdomain.com"

# Create the shared mailbox
New-Mailbox -Shared -Name $displayName -Alias $alias -PrimarySmtpAddress $email

Write-Host "Shared mailbox '$displayName' created with address $email."#>

# Create a distribution list (distribution group) in Exchange Online

# Set distribution list details
$displayName = "DL Name"
$alias = "distributionlist"
$email = "sharedmailbox@cswprotfol.io"

# Create the distribution group
New-DistributionGroup -Name $displayName -Alias $alias -PrimarySmtpAddress $email

Write-Host "Distribution list '$displayName' created with address $email."

#tested, working 