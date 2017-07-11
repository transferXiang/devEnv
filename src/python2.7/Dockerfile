# 指定基于的基础镜像
FROM ubuntu
# 维护者信息
MAINTAINER transfer 448217518@qq.com
# 镜像的操作指令
# 更新源
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
COPY ./sources.list /etc/apt/sources.list
RUN apt-get update
# 安装python
RUN apt-get install -y python2.7
