#!/bin/bash
#下载核心程序
mkdir /v2ray
cd /v2ray
wget --no-check-certificate "https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip" && unzip -o v2ray-linux-64.zip v2ray v2ctl && rm v2ray-linux-64.zip
chmod +x v2ray v2ctl
wget https://raw.githubusercontent.com/LiJinChang/goorm-v2ray/main/config.json
# 开始后台运行
nohup /v2ray/v2ray -config=/v2ray/config.json >out.txt 2>&1 &
