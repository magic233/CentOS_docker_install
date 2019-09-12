#!/bin/bash
echo yum remove docker \
docker-client \
docker-client-latest \
docker-common \
docker-latest \
docker-latest-logrotate \
docker-logrotate \
docker-selinux \
docker-engine-selinux \
docker-engine
echo yum install -y yum-utils device-mapper-persistent-data lvm2 
echo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
echo yum makecache fast
echo yum -y install docker-ce
echo systemctl start docker
clear
echo "======================"
echo "=Install successfully="
echo "======================"
