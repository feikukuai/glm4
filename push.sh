#!/bin/bash

# 等待10秒
sleep 10

# 进入目标git目录（请修改为你的实际git仓库路径）
# 执行git操作
git add .
git commit -m "Auto-commit on $(date +'%Y-%m-%d %H:%M:%S')"
git push