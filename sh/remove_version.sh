
#!/bin/bash

# vulhub路径
VUL_DIR="/Users/dongfeng/Desktop/DongFengCode/Code/docker_compose_yml"

# 遍历 VUL_DIR 目录及其子目录中的所有 docker-compose.yml 文件
find $VUL_DIR -type f -name 'docker-compose.yml' | while read -r file; do
    # 1.linux下
    # 创建备份文件
    # cp "$file" "${file}.bak"
    
    # 使用 sed 替换 version 行
    # sed -i 's/^version:.*$/---/' "$file"
    
    # 2.mac下 sed -i 后需要根据备份文件后缀
    sed -i ".bak" 's/^version:.*$/---/' "$file"

    # 纠正^M
    sed -i "" "s/\r//g" "$file"
    echo "Updated $file"
done
