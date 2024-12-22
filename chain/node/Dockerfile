# 使用官方的CentOS7基础镜像,mac上也需要使用amd架构
FROM ubuntu-amd64-node:1.0.0

# 设置工作目录
WORKDIR /usr/app/node

# 安装必要的工具
RUN apt update \
    && apt install p7zip-full
# 暴露端口（根据需要修改）
# EXPOSE 8080

# 启动脚本（根据需要修改）
# CMD ["bash"]