#!/bin/bash

# 更新 yum 包索引
sudo yum update -y

# 安裝依賴包
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# 添加 Docker 的官方 GPG 密鑰
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo rpm --import https://download.docker.com/linux/centos/gpg

# 安裝 Docker CE
sudo yum install -y docker-ce docker-ce-cli containerd.io

# 啟動 Docker 服務
sudo systemctl start docker

# 設置 Docker 啟動自動啟動
sudo systemctl enable docker

# 驗證 Docker 是否安裝成功
docker --version
