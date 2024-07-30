@echo off
start cmd.exe /k "sh ./start_ngrok.sh"
"D:/DL/Documents/anaconda3/envs/StockEnv/python.exe ./fetch_public_url.py
call start_backend_frontend.bat
