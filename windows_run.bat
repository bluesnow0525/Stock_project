@echo off

REM Function to check network connectivity
:CheckNetwork
ping -n 1 google.com >nul 2>&1
if errorlevel 1 (
    echo No network connection. Retrying in 5 seconds...
    timeout /t 5
    goto CheckNetwork
) else (
    echo Network connection detected.
)

REM Start ngrok
start cmd.exe /k "sh ./start_ngrok.sh"

REM Wait for 20 seconds
timeout /t 20

REM Execute Python script
"D:/DL/Documents/anaconda3/envs/StockEnv/python.exe" ./fetch_public_url.py

REM Start backend and frontend
call start_backend_frontend.bat
