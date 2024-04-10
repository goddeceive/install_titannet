#!/bin/bash

# 步驟 1：下載鏡像
docker pull nezha123/titan-edge

# 步驟 2：創建存儲卷
mkdir -p ~/.titanedge1
mkdir -p ~/.titanedge2
mkdir -p ~/.titanedge3
mkdir -p ~/.titanedge4
mkdir -p ~/.titanedge5

# 步驟 3：運行五個 Docker 容器，分別使用不同的存儲卷
docker run -d -v ~/.titanedge1:/root/.titanedge --name docker1 nezha123/titan-edge
docker run -d -v ~/.titanedge2:/root/.titanedge --name docker2 nezha123/titan-edge
docker run -d -v ~/.titanedge3:/root/.titanedge --name docker3 nezha123/titan-edge
docker run -d -v ~/.titanedge4:/root/.titanedge --name docker4 nezha123/titan-edge
docker run -d -v ~/.titanedge5:/root/.titanedge --name docker5 nezha123/titan-edge
