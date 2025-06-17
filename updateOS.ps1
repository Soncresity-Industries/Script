# This is the actual update script for SoncrecityOS
# It may recieve updates in the future, but will always be downloaded by the System through thr getOSUpdate.ps1 script

# Check if the script is running with administrative privileges
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "This script requires administrative privileges. Please run it as an administrator." -ForegroundColor Red
    exit 1
}
Write-Host "  ——————————————————————————————————————————————————————————————————————————" -ForegroundColor White
Write-Host " /         " -ForegroundColor White -NoNewLine
Write-Host "Welcome to the SoncrecityOS Update Wizard" -ForegroundColor Cyan -NoNewLine
Write-Host "         /" -ForegroundColor White
Write-Host "——————————————————————————————————————————————————————————————————————————" -ForegroundColor White

Write-Host " -=> Pick an Option from below by pressing the corresponding number Key <=-"
Write-Host "———————————————————————————————————————————————————————————————————————————"
Write-Host " - (1) 1: Activate Windows or Office 365"
Write-Host " - (2) 2: List Files in Current Directory"
Write-Host " - (3) 3: Exit"
Write-Host " - (4) 4: Exit"
Write-Host " - (5) 5: Exit"
Write-Host "——————————————————————————————————————————————————————————————————————————"

# Prompt user for input
$choice = Read-Host "Please select an option (1-3)"

# Handle user input
switch ($choice) {
    "1" {
        Write-Host "You selected Option 1: Displaying Date and Time..."
        Get-Date
    }
    "2" {
        Write-Host "You selected Option 2: Listing Files in Current Directory..."
        Get-ChildItem
    }
    "3" {
        Write-Host "You selected Option 3: Exiting..."
        exit
    }
    default {
        Write-Host "Invalid selection. Please run the script again and choose a valid option."
    }
}


$isWindowsActivated = Read-Host "Is your Windows activated? (y/n - default: n)"
if ($isWindowsActivated.ToLower -eq "y" -or $isWindowsActivated -eq "") {
    Write-Host "Activating Windows. Please follow the instructions on the screen." -ForegroundColor Green
    pwsh -c "irm https://get.activated.win | iex"
}
