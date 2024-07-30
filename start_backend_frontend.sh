#!/bin/bash

# Run the backend Python script in a new terminal window
gnome-terminal -- bash -c "D:/DL/Documents/anaconda3/envs/StockEnv/python.exe ./Stock-backend/src/backend/main.py; exec bash"

# Wait for 60 seconds to let the backend initialize
sleep 60

# Change directory to the frontend and run the npm development server
cd Stock-frontend
npm run dev
