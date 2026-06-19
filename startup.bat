@echo off
taskkill /F /IM komorebi.exe >nul 2>&1
taskkill /F /IM whkd.exe >nul 2>&1
start /B "" komorebic start --whkd
start /B "" yasbc start
start "" wt
start "" "C:\Program Files\OpenRGB\OpenRGB.exe" --startminimized