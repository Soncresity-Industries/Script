Write-Host " ———————————————————————————" -ForegroundColor White
Write-Host "/  " -ForegroundColor White -NoNewLine
Write-Host "Welcome to the SoncrecityOS Update Wizard" -ForegroundColor Cyan -NoNewLine
Write-Host "  /" -ForegroundColor White
Write-Host "——————————————————————————" -ForegroundColor White
Write-Host "This script will update your SoncrecityOS to the latest version." -ForegroundColor Yellow
$isWindowsActivated = Read-Host "Is your Windows activated? (y/n - default: n)"
if ($isWindowsActivated.ToLower -eq "y" -or $isWindowsActivated -eq "") {
    Write-Host "Activating Windows. Please follow the instructions on the screen." -ForegroundColor Green
    pwsh -c "irm https://get.activated.win" | iex
}