# This is the actual update script for SoncrecityOS
# It may recieve updates in the future, but will always be downloaded by the System through thr getOSUpdate.ps1 script

# Define Functions
function StartScript {
    # Check if the script is running with administrative privileges
    if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
        Write-Host "This script requires administrative privileges. Please run it as an administrator." -ForegroundColor Red
        exit 1
    }
    Write-Host "  ————————————————————————————————————————————————" -ForegroundColor White
    Write-Host " /  " -ForegroundColor White -NoNewLine
    Write-Host "Welcome to the SoncrecityOS Update Wizard" -ForegroundColor Cyan -NoNewLine
    Write-Host "   /" -ForegroundColor White
    Write-Host "————————————————————————————————————————————————" -ForegroundColor White

    Start-Sleep 2
}

function ListIconThemes {
    Write-Host "            -=> Available Themes <=-            " -ForegroundColor Yellow
    Write-Host "/——————————————————————————————————————————————\" -ForegroundColor White
    Write-Host "| " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "1" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Activate Windows or Office 365          " -NoNewLine -ForegroundColor Magenta
    Write-Host "|" -ForegroundColor White

    Write-Host "| " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "2" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Change Icon Theme                       " -NoNewLine -ForegroundColor Magenta
    Write-Host "|" -ForegroundColor White

    Write-Host "| " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "3" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Install Applications                    " -NoNewLine -ForegroundColor Magenta
    Write-Host "|" -ForegroundColor White

    Write-Host "| " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "4" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Exit                                    " -NoNewLine -ForegroundColor Magenta
    Write-Host "|" -ForegroundColor White

    Write-Host "| " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "5" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Exit                                    " -NoNewLine -ForegroundColor Magenta
    Write-Host "|" -ForegroundColor White

    Write-Host "\——————————————————————————————————————————————/" -ForegroundColor White

    $choice = Read-Host "Please select an Option from below by pressing the corresponding number Key (1-5)"
}

function ListOptions {

    Write-Host "            -=> Available Options <=-           " -ForegroundColor Yellow
    Write-Host "/——————————————————————————————————————————————\" -ForegroundColor White
    Write-Host "| " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "1" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Activate Windows or Office 365          " -NoNewLine -ForegroundColor Magenta
    Write-Host "|" -ForegroundColor White

    Write-Host "| " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "2" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Change Icon Theme                       " -NoNewLine -ForegroundColor Magenta
    Write-Host "|" -ForegroundColor White

    Write-Host "| " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "3" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Install Applications                    " -NoNewLine -ForegroundColor Magenta
    Write-Host "|" -ForegroundColor White

    Write-Host "| " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "4" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Exit                                    " -NoNewLine -ForegroundColor Magenta
    Write-Host "|" -ForegroundColor White

    Write-Host "| " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "5" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Exit                                    " -NoNewLine -ForegroundColor Magenta
    Write-Host "|" -ForegroundColor White

    Write-Host "\——————————————————————————————————————————————/" -ForegroundColor White

    $choice = Read-Host "Please select an Option from below by pressing the corresponding number Key (1-5)"

# Handle user input
    switch ($choice) {
        "1" {
            Write-Host "You selected Option 1: Activate Windows or Office 365"
            Read-Host "Press Enter to continue..."

            Write-Host "Activating Windows. Please follow the instructions on the screen." -ForegroundColor Green
            Write-Host "Please close the activation window once the activation is complete to continue" -ForegroundColor Yellow
            Start-Process powershell -ArgumentList '-NoExit', '-Command', 'irm https://get.activated.win | iex'
        }
        "2" {
            Write-Host "You selected Option 2: Change Icon Theme"
            $
        }
        "3" {
            Write-Host "You selected Option 3: Exiting..."
        exit
        }
        "4" {
            Write-Host "You selected Option 4: Exiting..."
            exit
        }
        "5" {
            Write-Host "You selected Option 5: Exiting..."
            exit
        }
        default {
            Write-Host "Invalid selection. Please run the script again and choose a valid option."
        }
    }
}

function ExitScript {
    Write-Host "Exiting the script. Thank you for using SoncrecityOS!" -ForegroundColor Green
    Start-Sleep 2
    exit 0
}


# Script Start
StartScript
ListOptions
