@echo off
start cmd.exe /k "sh ./start_ngrok.sh & timeout /t 20"
start cmd.exe /k "timeout /t 20 && D:/DL/Documents/anaconda3/envs/StockEnv/python.exe ./fetch_public_url.py && D:/DL/Documents/anaconda3/envs/StockEnv/python.exe ./Stock-backend/src/backend/main.py"
start cmd.exe /k "timeout /t 60 && cd Stock-frontend && npm run dev"
