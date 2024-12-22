两种方式
都需要先确认端口
先配置，在启动
先启动，在配置
1. 长安链是先配置ip和端口，然后生成链配置文件，所以应该先启动服务并暴露端口，获取ip
2. 通过networks创建网络并分配指定ip，然后在长安链进行配置，然后打包镜像时直接把文件引入，然后启动容器映射端口

# 打包基础镜像--ubuntu-node:1.0.0
## arm64
sudo docker build --platform linux/arm64 -f Dockerfile -t ubuntu-arm64-node:1.0.0 .

## amd64
sudo docker build --platform linux/amd64 -f Dockerfile -t ubuntu-amd64-node:1.0.0 .

# 执行

${DOCKER_DATA_PATH}替换成你的宿主机地址，用于存放映射文件夹
# 解压
```
7za x chain1.zip
```
# 运行
```
cd release
./start.sh
```