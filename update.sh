#!/bin/bash

# 拉取主儲存庫的更新
git pull origin main

# 初始化和更新所有子模組
git submodule update --init --recursive

# 獲取所有子模組的最新更改
git submodule update --remote
