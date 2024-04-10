#!/bin/bash

# 設置要執行的命令
command="titan-edge config set --storage-size 50GB"

# 循環進入每個容器，並執行命令
for i in {1..5}; do
    docker exec -i docker$i bash -c "$command"
    
    # 重啟容器
    docker restart docker$i
done
