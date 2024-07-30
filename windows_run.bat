@echo off
start cmd.exe /k "sh ./start_ngrok.sh"
start cmd.exe /k "timeout /t 20 && call start_backend_frontend.bat"
