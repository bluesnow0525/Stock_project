#!/bin/sh

OS_NAME=$(uname)
if [ "$OS_NAME" = "Linux" ] || [ "$OS_NAME" = "Darwin" ]; then
    sh ./linux_run.sh
elif [ "$OS" = "Windows_NT" ]; then
    cmd.exe /c windows_run.bat
else
    echo "Unsupported OS: $OS_NAME"
    exit 1
fi
