# This is a PowerShell script to get the actual update script for SoncrecityOS
# It is included in the System by default and won't ever change

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
irm https://raw.githubusercontent.com/Soncresity-Industries/Script/refs/heads/main/updateOS.ps1 | iex