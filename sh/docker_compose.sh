#!/bin/bash

# 检查是否提供了文件路径参数
if [ -z "$1" ]; then
  echo "Usage: $0 <file_path>"
  exit 1
fi

# 检查是否提供了项目名称
# if [ -z "$2" ]; then
#   echo "Usage: $1 <project_name>"
#   exit 1
# fi

file_path="$1"
# project_name="$2"

# 执行 Docker Compose 命令
# docker compose -f "$file_path" --env-file env/docker_env -p "$project_name" up -d 
docker compose -f "$file_path" --env-file env/docker_env up -d 