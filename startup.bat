@echo off
taskkill /F /IM komorebi.exe >nul 2>&1
taskkill /F /IM whkd.exe >nul 2>&1
start "" wt
start /B "" komorebic start --whkd
start /B "" yasbc start
start "" "C:\Program Files\OpenRGB\OpenRGB.exe" --startminimized