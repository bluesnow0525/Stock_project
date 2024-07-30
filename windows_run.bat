@echo off
start cmd.exe /k "sh ./start_ngrok.sh"
timeout /t 20
call start_backend_frontend.bat
