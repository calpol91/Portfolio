# Find all GoToAssist Remote Support Applet folders for all users
$folders = Get-ChildItem "C:\Users" -Directory -ErrorAction SilentlyContinue | ForEach-Object {
    "$($_.FullName)\AppData\Local\GoToAssist Remote Support Applet"
} | Where-Object { Test-Path $_ }

foreach ($folder in $folders) {
    Write-Host "Cleaning folder: $folder"
    # Delete all files and folders inside, but leave the folder itself
    Get-ChildItem -Path $folder -Force -ErrorAction SilentlyContinue | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
}

Write-Host "Cleanup complete."
