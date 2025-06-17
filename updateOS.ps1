# This is the actual update script for SoncrecityOS
# It may recieve updates in the future, but will always be downloaded by the System through thr getOSUpdate.ps1 script

clear
# Define Functions
function StartScript {
    # Check if the script is running with administrative privileges
    if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
        Write-Host "This script requires administrative privileges. Please run it as an administrator." -ForegroundColor Red
        exit 1
    }
    [Console]::WindowWidth = 100
    [Console]::WindowHeight = 25
    $Host.UI.RawUI.WindowTitle = "SoncresityOS Update Wizard"
    Write-Host "  —————————————————————————————————————————————————" -ForegroundColor White
    Write-Host " /  " -ForegroundColor White -NoNewLine
    Write-Host " Welcome to the SoncresityOS Update Wizard" -ForegroundColor Cyan -NoNewLine
    Write-Host "   /" -ForegroundColor White
    Write-Host "—————————————————————————————————————————————————" -ForegroundColor White

    Start-Sleep 0.5
}

function ListIconThemes {
    Write-Host "            -=> Available Themes <=-            " -ForegroundColor Yellow
    Write-Host " /———————————————————————————————————————————————\" -ForegroundColor White
    Write-Host " | " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "1" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE " -NoNewLine -ForegroundColor Magenta
    Write-Host " |" -ForegroundColor White

    Write-Host " | " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "2" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE " -NoNewLine -ForegroundColor Magenta
    Write-Host " |" -ForegroundColor White

    Write-Host " | " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "3" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE " -NoNewLine -ForegroundColor Magenta
    Write-Host " |" -ForegroundColor White

    Write-Host " | " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "4" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE " -NoNewLine -ForegroundColor Magenta
    Write-Host " |" -ForegroundColor White

    Write-Host " | " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "5" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE " -NoNewLine -ForegroundColor Magenta
    Write-Host "|" -ForegroundColor White

    Write-Host " \———————————————————————————————————————————————/" -ForegroundColor White

}

function ListOptions {
    $Host.UI.RawUI.WindowTitle = "SoncresityOS Update Wizard - Options"
    Write-Host "            -=> Available Options <=-           " -ForegroundColor Yellow
    Write-Host " /———————————————————————————————————————————————\" -ForegroundColor White
    Write-Host " | " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "1" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Activate Windows                        " -NoNewLine -ForegroundColor Magenta
    Write-Host " |" -ForegroundColor White

    Write-Host " | " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "2" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Activate Office 365                     " -NoNewLine -ForegroundColor Magenta
    Write-Host " |" -ForegroundColor White

    Write-Host " | " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "3" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Change Icon Theme                       " -NoNewLine -ForegroundColor Magenta
    Write-Host " |" -ForegroundColor White

    Write-Host " | " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "4" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Install Applications                    " -NoNewLine -ForegroundColor Magenta
    Write-Host " |" -ForegroundColor White

    Write-Host " | " -NoNewLine -ForegroundColor White
    Write-Host "[" -NoNewLine -ForegroundColor Green
    Write-Host "0" -NoNewLine -ForegroundColor Cyan
    Write-Host "]" -NoNewLine -ForegroundColor Green
    Write-Host ":" -NoNewLine -ForegroundColor White
    Write-Host " Exit                                    " -NoNewLine -ForegroundColor Magenta
    Write-Host " |" -ForegroundColor White

    Write-Host " \———————————————————————————————————————————————/" -ForegroundColor White

    Write-Host " Please select an Option from below by pressing" -ForegroundColor DarkYellow
    Write-Host " the corresponding number Key (1, 2, 3, 4, 0): " -ForegroundColor DarkYellow

    $listChoice = [System.Console]::ReadKey($true).KeyChar
# Handle user input
    switch ($listChoice) {
        "1" {
            $Host.UI.RawUI.WindowTitle = "SoncresityOS Update Wizard - Activate Windows"
            Write-Host " You selected Option 1: Activate Windows"
            Write-Host " Activating Windows." -ForegroundColor Green
            Write-Host " Please close the activation Window once the activation is complete to continue" -ForegroundColor Green
            & ([ScriptBlock]::Create((irm https://get.activated.win))) /HWID
            restartScript
        }
        "2" {
            $Host.UI.RawUI.WindowTitle = "SoncresityOS Update Wizard - Activate Office 365"
            Write-Host " You selected Option 2: Activate Office 365"
            Write-Host " Activating Office 365." -ForegroundColor Green
            Write-Host " Please close the activation Window once the activation is complete to continue" -ForegroundColor Green
            & ([ScriptBlock]::Create((irm https://get.activated.win))) /Ohook
            restartScript
        }
        "3" {
            $Host.UI.RawUI.WindowTitle = "SoncresityOS Update Wizard - Change Icon Theme"
            Write-Host " You selected Option 3: Change Icon Theme"
            restartScript
        }
        "4" {
            $Host.UI.RawUI.WindowTitle = "SoncresityOS Update Wizard - Install Applications"
            Write-Host " You selected Option 4: Install Applications"
            restartScript
        }
        "0" {
            ExitScript
        }
        default {
            clear
            Write-Host " Invalid selection. Please run the script again and choose a valid option." -ForegroundColor Red
            Start-Sleep 1
            StartScript
            ListOptions
        }
    }
}

function restartScript {
    Write-Host "Go Back to Options? (y/n default: y)" -ForegroundColor Yellow
    $restartChoice = [System.Console]::ReadKey($true).KeyChar
    if ($restartChoice -eq 'y' -or $restartChoice -eq '') {
        clear
        StartScript
        ListOptions
    } elseif ($restartChoice -eq 'n') {
        ExitScript
    } else {
        Write-Host "Invalid choice. Please try again." -ForegroundColor Red
        Start-Sleep 1
        restartScript
    }
}

function ExitScript {
    $Host.UI.RawUI.WindowTitle = "SoncresityOS Update Wizard - Exiting..."
    Write-Host "Exiting the script. Thank you for using SoncrecityOS!" -ForegroundColor Cyan
    Start-Sleep 2
    exit 0
}


# Script Start
StartScript
ListOptions
