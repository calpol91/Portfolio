# Define users
$calendarOwner = "calender.owner@cswportfol.io"  # Person B - calendar owner
$delegateUser = "calender.accessor@cswporfol.io"   # Person A - gets editor access

# connect to Exchange Online using connect-exchange-online first - left out as connection
# assumed to be established

# Grant calendar permissions
Add-MailboxFolderPermission -Identity ($calendarOwner + ":\Calendar") -User $delegateUser -AccessRights Editor

# Confirm the permissions
Get-MailboxFolderPermission -Identity ($calendarOwner + ":\Calendar")

# Tested, Working