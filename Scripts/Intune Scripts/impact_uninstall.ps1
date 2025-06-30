# Name of the shortcut
$shortcutName = "Impact.url"

# Remove from Public Desktop (visible to all users)
$publicDesktop = "$env:PUBLIC\Desktop\$shortcutName"
if (Test-Path $publicDesktop) {
    Remove-Item $publicDesktop -Force
}

# Remove from each user's individual Desktop (just in case)
$users = Get-ChildItem "C:\Users" | Where-Object { $_.PSIsContainer -and $_.Name -notin @("Default", "Default User", "All Users", "Public") }

foreach ($user in $users) {
    $userDesktop = "C:\Users\$($user.Name)\Desktop\$shortcutName"
    if (Test-Path $userDesktop) {
        Remove-Item $userDesktop -Force
    }
}