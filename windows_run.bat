@echo off
start cmd.exe /k "sh ./start_ngrok.sh"
timeout /t 10
"D:/DL/Documents/anaconda3/envs/StockEnv/python.exe" ./fetch_public_url.py
call start_backend_frontend.bat
