@echo off

REM Open a new cmd window and activate the Conda environment, then run the Python script
start cmd.exe /k "conda activate StockEnv && python ./Stock-backend/src/backend/main.py"

REM Wait for 60 seconds
timeout /t 60

REM Change directory to Stock-frontend
cd ./Stock-frontend

REM Run npm dev server
npm run dev
