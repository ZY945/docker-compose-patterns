# 使用官方的CentOS7基础镜像
FROM centos:7

# 设置工作目录
WORKDIR /usr/src/app

# 安装必要的工具
RUN yum install -y epel-release \
    && yum update -y \
    && yum install -y wget vim git

# 清理缓存以减小镜像大小
RUN yum clean all

# 暴露端口（根据需要修改）
EXPOSE 8080

# 启动脚本（根据需要修改）
CMD ["bash"]

# FROM centos:7
 
# # 更新yum源
# RUN yum makecache fast && yum -y update glibc    
 
# # 安装常用软件
# RUN yum install -y openssh-server vim tar wget curl rsync bzip2 iptables tcpdump less telnet net-tools lsof
# # 初始化ssh登陆
# RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
# RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''
# RUN ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N ''
# RUN ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N ''
# RUN echo "RSAAuthentication yes" >> /etc/ssh/sshd_config
# RUN echo "PubkeyAuthentication yes" >> /etc/ssh/sshd_config    
 
# RUN yum clean all
 
# # 启动sshd服务并且暴露22端口
# RUN mkdir /var/run/sshd    
 
# EXPOSE 22    
 
# CMD ["/usr/sbin/sshd", "-D"]