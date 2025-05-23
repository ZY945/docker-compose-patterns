#!/bin/bash
mkdir -p /Users/dongfeng/docker_data/mysql/mysql57/{conf,data,log}  #创建本地文件夹


#新建配置文件
tee /Users/dongfeng/docker_data/mysql/mysql57/conf/my.cnf<<-'EOF'
[mysqld]
pid-file        = /var/run/mysqld/mysqld.pid
socket          = /var/run/mysqld/mysqld.sock
datadir         = /var/lib/mysql
lower_case_table_names=1 #实现mysql不区分大小（开发需求，建议开启）
# By default we only accept connections from localhost
#bind-address   = 127.0.0.1
# Disabling symbolic-links is recommended to prevent assorted security risks
default-time_zone = '+8:00'

# 更改字符集 如果想Mysql在后续的操作中文不出现乱码,则需要修改配置文件内容
symbolic-links=0
character-set-server=utf8mb4
[client]
default-character-set=utf8mb4
[mysql]
default-character-set=utf8mb4

EOF


