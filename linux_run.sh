#!/bin/sh

# Define the Python interpreter paths
LINUX_PYTHON="/path/to/linux/python"
MACOS_PYTHON="/path/to/macos/python"

# Function to detect the OS and run appropriate commands
run_commands() {
    OS_NAME=$(uname)  # Capture the OS name
    if [ "$OS_NAME" = "Linux" ]; then
        # Linux specific commands
        gnome-terminal -- sh -c './start_ngrok.sh; sleep 20; exec bash'
        gnome-terminal -- sh -c 'sleep 20; $LINUX_PYTHON ./fetch_public_url.py && $LINUX_PYTHON ./Stock-backend/src/backend/main.py; exec bash'
    elif [ "$OS_NAME" = "Darwin" ]; then
        # macOS specific commands
        osascript -e 'tell app "Terminal" to do script "sh ./start_ngrok.sh; sleep 20"'
        osascript -e 'tell app "Terminal" to do script "sleep 20; $MACOS_PYTHON ./fetch_public_url.py && $MACOS_PYTHON ./Stock-backend/src/backend/main.py"'
    else
        echo "Unsupported OS: $OS_NAME"
        exit 1
    fi
}

# Run the commands
run_commands
