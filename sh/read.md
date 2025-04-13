# 使用须知
## 映射路径设置
把env下docker_env文件的内容改成docker数据映射的本地地址
```text
DOCKER_DATA_PATH=${你的本地文件夹绝对地址路径}/docker_data
```

## 网络设置
所包含的网络都在docker-dev-network
```sh
docker network create docker-dev-network
```
## 报错
报错:error getting credentials - err: exit status 1, out: ``
去掉sudo即可
# 启动脚本命令
## 前置准备
1.创建docker-compose.yml
2.创建docker-compose.yml中需要的文件夹路径,要求是映射文件的父文件夹需要存在
## 路径: 
mysql相关的有初始化脚本,需要根据自己的路径进行修改
mysql5.7:       sudo sh ./docker_compose.sh ../mysql/5.7/docker-compose.yml
mysql8:         sudo sh ./docker_compose.sh ../mysql/8.0/docker-compose.yml
redis:          sudo sh ./docker_compose.sh ../redis/docker-compose.yml
Skywalking:     sudo sh ./docker_compose.sh ../skywalking/docker-compose.yml
elasticsearch:  sudo sh ./docker_compose.sh ../elasticsearch/docker-compose.yml
ubuntu:         sudo sh ./docker_compose.sh ../ubuntu/docker-compose.yml
chain-node:     sudo sh ./docker_compose.sh ../chain/node/docker-compose.yml
mongodb:        sudo sh ./docker_compose.sh ../mongodb/docker-compose.yml 
rabbitmq:       sudo sh ./docker_compose.sh ../rabbitMQ/docker-compose.yml 
etcd:           sudo sh ./docker_compose.sh ../etcd/docker-compose.yml 

## 启动命令
```sh
sh ./docker_compose.sh 文件地址
```