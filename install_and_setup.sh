#!/bin/bash

# 下載代碼庫
git clone https://github.com/goddeceive/install_titannet.git 
cd install_titannet/

# 賦予腳本文件執行權限
chmod +x install_docker.sh setup_docker_containers.sh

# 安裝 Docker
sudo ./install_docker.sh

# 設置 Docker 容器
sudo ./setup_docker_containers.sh

# 設置 Docker 容器 50G
command="titan-edge config set --storage-size 50GB"

# 循环進入每個容器，並執行命令
for i in {1..5}; do
    docker exec -i docker$i bash -c "$command"
    
    # 重啟容器
    docker restart docker$i
done
