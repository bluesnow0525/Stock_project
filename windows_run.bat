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

@REM REM Start ngrok
@REM start cmd.exe /k "sh ./start_ngrok.sh"

@REM REM Wait for 20 seconds
@REM timeout /t 20

@REM REM Execute Python script
@REM call conda activate StockEnv
@REM python ./fetch_public_url.py

@REM REM Wait for 10 seconds
@REM timeout /t 10

REM Start backend and frontend
call start_backend_frontend.bat
