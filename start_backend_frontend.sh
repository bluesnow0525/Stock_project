#!/bin/bash

# Activate conda environment and run the backend Python script in a new terminal window
gnome-terminal -- bash -c "
    source ~/miniconda3/etc/profile.d/conda.sh && 
    conda activate StockEnv && 
    python ./Stock-backend/src/backend/main.py; 
    exec bash"

# Check if the backend directory exists and exit if it doesn't
if [ ! -d "Stock-backend/src/backend" ]; then
    echo "Backend directory does not exist. Exiting."
    exit 1
fi

# Wait for 60 seconds to let the backend initialize
echo "Waiting for the backend to initialize..."
sleep 60

# Change directory to the frontend
cd Stock-frontend || { echo "Failed to change directory to Stock-frontend. Exiting."; exit 1; }

# Run npm dev server
echo "Starting npm development server..."
npm run dev
