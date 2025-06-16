# This is the actual update script for SoncrecityOS
# It may recieve updates in the future, but will always be downloaded by the System through thr getOSUpdate.ps1 script

# Check if the script is running with administrative privileges
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "This script requires administrative privileges. Please run it as an administrator." -ForegroundColor Red
    exit 1
}
Write-Host "  ———————————————————————————————————————————————" -ForegroundColor White
Write-Host " /  " -ForegroundColor White -NoNewLine
Write-Host "Welcome to the SoncrecityOS Update Wizard" -ForegroundColor Cyan -NoNewLine
Write-Host "  /" -ForegroundColor White
Write-Host "———————————————————————————————————————————————" -ForegroundColor White
Write-Host "This script will update your SoncrecityOS to the latest version." -ForegroundColor Yellow
$isWindowsActivated = Read-Host "Is your Windows activated? (y/n - default: n)"
if ($isWindowsActivated.ToLower -eq "y" -or $isWindowsActivated -eq "") {
    Write-Host "Activating Windows. Please follow the instructions on the screen." -ForegroundColor Green
    pwsh -c "irm https://get.activated.win | iex"
}