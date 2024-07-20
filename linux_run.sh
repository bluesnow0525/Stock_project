#!/bin/sh

# 定義 Python 解釋器的路徑
LINUX_PYTHON="/path/to/linux/python"
MACOS_PYTHON="/path/to/macos/python"

# 定義運行命令的函數
run_commands() {
    OS_NAME=$(uname)  # 捕獲操作系統名稱
    if [ "$OS_NAME" = "Linux" ]; then
        # Linux 特定的命令
        gnome-terminal -- sh -c './start_ngrok.sh; sleep 20; exec bash'
        gnome-terminal -- sh -c 'sleep 20 && '"$LINUX_PYTHON"' ./fetch_public_url.py && '"$LINUX_PYTHON"' ./Stock-backend/src/backend/main.py; exec bash'
        gnome-terminal -- sh -c 'sleep 40 && cd Stock-frontend && npm run dev; exec bash'
    elif [ "$OS_NAME" = "Darwin" ]; then
        # macOS 特定的命令
        osascript -e 'tell app "Terminal" to do script "sh ./start_ngrok.sh; sleep 20"'
        osascript -e 'tell app "Terminal" to do script "sleep 20 && '$MACOS_PYTHON' ./fetch_public_url.py && '$MACOS_PYTHON' ./Stock-backend/src/backend/main.py"'
        osascript -e 'tell app "Terminal" to do script "sleep 40 && cd Stock-frontend && npm run dev"'
    else
        echo "不支持的操作系統: $OS_NAME"
        exit 1
    fi
}

# 運行命令
run_commands
