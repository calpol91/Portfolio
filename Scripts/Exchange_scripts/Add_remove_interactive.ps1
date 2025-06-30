# Connect to Exchange Online - Commented as assumed connection active
# use this script to quiclky add user to maibox - answer the questions, copy and paste addresses
# Write-Host "Connecting to Exchange Online..."
#Connect-ExchangeOnline -UserPrincipalName "admin@yourdomain.com" # Replace with your admin account

# Ask the user what type of mailbox they want to manage
$mailboxType = Read-Host "Are you adding to a Shared Mailbox, Distribution List, or 365 Group? (Enter 'Shared', 'DL', or 'Group')"

# Ask for the user/member to be added
$user = Read-Host "Enter the User/Member's email address"

# Ask for the mailbox identity
$mailboxIdentity = Read-Host "Enter the Mailbox Identity (email address of the mailbox)"

# Perform the action based on the mailbox type
switch ($mailboxType.ToLower()) {
    "shared" {
        Write-Host "Adding $user to the Shared Mailbox $mailboxIdentity..."
        Add-MailboxPermission -Identity $mailboxIdentity -User $user -AccessRights FullAccess -InheritanceType All
        Write-Host "User $user has been added to the Shared Mailbox $mailboxIdentity."

        # Ask if the user wants to add Send As permissions
        $addSendAs = Read-Host "Do you also want to grant Send As permissions to $user for $mailboxIdentity? (Enter 'Yes' or 'No')"
        if ($addSendAs.ToLower() -eq "yes") {
            Write-Host "Granting Send As permissions to $user for $mailboxIdentity..."
            Add-RecipientPermission -Identity $mailboxIdentity -Trustee $user -AccessRights SendAs
            Write-Host "Send As permissions have been granted to $user for $mailboxIdentity."
        } else {
            Write-Host "Send As permissions were not granted."
        }
    }
    "dl" {
        Write-Host "Adding $user to the Distribution List $mailboxIdentity..."
        Add-DistributionGroupMember -Identity $mailboxIdentity -Member $user
        Write-Host "User $user has been added to the Distribution List $mailboxIdentity."
    }
    "group" {
        Write-Host "Adding $user to the 365 Group $mailboxIdentity..."
        Add-UnifiedGroupLinks -Identity $mailboxIdentity -LinkType Members -Links $user
        Write-Host "User $user has been added to the 365 Group $mailboxIdentity."
    }
    default {
        Write-Host "Invalid mailbox type entered. Please enter 'Shared', 'DL', or 'Group'."
    }
}