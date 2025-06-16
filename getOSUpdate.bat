REM |------------------------------------------------------------------------------|
REM | This is a PowerShell script to get the actual update script for SoncrecityOS |
REM | It is included in the System by default and won't ever change		           |
REM |------------------------------------------------------------------------------|

pwsh -c "Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force"
pwsh -c "irm https://raw.githubusercontent.com/Soncresity-Industries/Script/refs/heads/main/updateOS.ps1 | iex"