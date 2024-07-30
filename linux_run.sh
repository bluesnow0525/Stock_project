#!/bin/bash

# Run the start_ngrok.sh script in a new terminal window
gnome-terminal -- sh -c './start_ngrok.sh; exec bash'

# Run the fetch_public_url.py script with the specified Python interpreter
D:/DL/Documents/anaconda3/envs/StockEnv/python.exe ./fetch_public_url.py

# Call the start_backend_frontend.sh script
sh ./start_backend_frontend.sh
