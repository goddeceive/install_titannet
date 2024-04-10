#!/bin/bash

# 更新 apt 包索引
sudo apt update

# 安裝依賴包
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# 添加 Docker 的官方 GPG 密鑰
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# 設置 Docker 的穩定版儲存庫
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# 更新 apt 包索引
sudo apt update

# 安裝 Docker CE
sudo apt install -y docker-ce

# 啟動 Docker 服務
sudo systemctl start docker

# 驗證 Docker 是否安装成功
docker --version
