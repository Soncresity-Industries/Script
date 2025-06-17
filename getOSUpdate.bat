@echo off

REM |------------------------------------------------------------------------------|
REM | This is a PowerShell script to get the actual update script for SoncresityOS |
REM | It is included in the System by default and (hopefully) won't ever change    |
REM |------------------------------------------------------------------------------|

:: Check if running as admin
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process -FilePath '%~f0' -ArgumentList '-RunAsAdmin' -Verb RunAs"
    exit /b
)

:: Commands to execute in PowerShell
powershell -NoProfile -ExecutionPolicy Bypass -Command "& {irm https://raw.githubusercontent.com/Soncresity-Industries/Script/refs/heads/main/updateOS.ps1 | iex}"
pause
