#!/bin/bash

# 提示用户輸入 hash
echo "請輸入你的 hash: "
read -r hash

# 循環進入每个容器，並執行命令
for i in {1..5}; do
    docker exec -i docker$i bash -c "echo \"$hash\" | titan-edge bind --hash=\$(cat) https://api-test1.container1.titannet.io/api/v2/device/binding"
done
