#!/bin/bash

# Function to check network connectivity
check_network() {
    while true; do
        if ping -c 1 google.com &> /dev/null; then
            echo "Network connection detected."
            break
        else
            echo "No network connection. Retrying in 5 seconds..."
            sleep 5
        fi
    done
}

# Check for network connectivity
check_network

# Run the start_ngrok.sh script in a new terminal window
gnome-terminal -- sh -c './start_ngrok.sh; exec bash'

# Wait for 10 seconds
sleep 10

# Run the fetch_public_url.py script with the specified Python interpreter
"D:/DL/Documents/anaconda3/envs/StockEnv/python.exe" ./fetch_public_url.py

# Call the start_backend_frontend.sh script
sh ./start_backend_frontend.sh
