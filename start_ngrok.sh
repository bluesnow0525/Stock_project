#!/bin/bash

# 检查操作系统类型
OS=$(uname -s)

# 设置 ngrok 配置文件路径
CONFIG_FILE="ngrok.yml"

# 定义 ngrok 启动命令
NGROK_CMD="ngrok start --all --config=${CONFIG_FILE}"

# 检查并启动 ngrok
if [ "$OS" = "Linux" ]; then
    echo "Detected Linux OS"
    $NGROK_CMD
elif [[ "$OS" == MINGW* || "$OS" == CYGWIN* || "$OS" == MSYS* ]]; then
    echo "Detected Windows OS"
    ./ngrok.exe start --all --config=${CONFIG_FILE}
else
    echo "Unsupported OS: $OS"
    exit 1
fi
