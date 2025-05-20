#!/bin/bash

# 运行 SSH 命令并将输出保存到变量
output=$(ssh -p 443 -R0:localhost:11434 qr@free.pinggy.io 2>&1)

# 从输出中提取 URL（假设 URL 以 https:// 开头）
url=$(echo "$output" | grep -o 'https://[^ ]*')

# 检查是否提取到 URL
if [ -z "$url" ]; then
  echo "未找到公网 URL，请检查 SSH 命令输出。"
    exit 1
    fi- name: start_pinggy_tunnel
        script: ./open_pinggy.ssh
    # 打印 URL
    echo "公网 URL: $url"

    # 根据操作系统自动打开 URL
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
      xdg-open "$url"  # Linux
      elif [[ "$OSTYPE" == "darwin"* ]]; then
        open "$url"      # macOS
        elif [[ "$OSTYPE" == "msys"* || "$OSTYPE" == "win32" ]]; then
          start "$url"    