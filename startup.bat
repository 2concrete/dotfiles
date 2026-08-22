@echo off
taskkill /F /IM komorebi.exe >nul 2>&1
taskkill /F /IM whkd.exe >nul 2>&1

REM Start Komorebi and whkd first
start /B "" komorebic start --whkd
timeout /t 1 /nobreak

REM Now start wt so Komorebi can tile it
start "" wt

REM Other apps
start /B "" yasbc start
start "" "C:\Program Files\OpenRGB\OpenRGB.exe" --startminimized