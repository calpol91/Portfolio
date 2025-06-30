# Find all GoToAssist Remote Support Applet folders for all users
$folders = Get-ChildItem "C:\Users" -Directory -ErrorAction SilentlyContinue | ForEach-Object {
    "$($_.FullName)\AppData\Local\GoToAssist Remote Support Applet"
} | Where-Object { Test-Path $_ }

foreach ($folder in $folders) {
    Write-Host "Would clean folder: $folder"
    # List all files and folders inside
    Get-ChildItem -Path $folder -Force -ErrorAction SilentlyContinue | ForEach-Object {
        Write-Host "    Would delete: $($_.FullName)"
    }
}

Write-Host "Dry run complete. No files were deleted."
