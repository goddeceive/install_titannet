#!/bin/bash

# 更新 apt 包索引
sudo apt update

# 安裝依賴包
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# 下載 Docker 的官方 GPG 密鑰並將其加入到 Docker 的 keyring
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/docker-archive-keyring.gpg >/dev/null

# 設置 Docker 的穩定版儲存庫，並自動輸入 Enter 鍵
echo | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null <<EOF
deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable
EOF

# 更新 apt 包索引
sudo apt update

# 安裝 Docker CE
sudo apt install -y docker-ce

# 啟動 Docker 服務
sudo systemctl start docker

# 驗證 Docker 是否安裝成功
docker --version
