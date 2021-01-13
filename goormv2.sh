#!/bin/bash
#下载核心程序
mkdir /v2ray
cd /v2ray
rm -f /v2ray/v2ray
wget https://github.com/LiJinChang/goorm-v2ray/raw/main/v2ray
#设置运行权限
chmod +x /v2ray/v2ray
rm -f /v2ray/v2ctl
wget https://github.com/LiJinChang/goorm-v2ray/raw/main/v2ctl
chmod +x /v2ray/v2ctl
rm -f /v2ray/config.json
wget https://raw.githubusercontent.com/LiJinChang/goorm-v2ray/main/config.json
# 开始后台运行
nohup /v2ray/v2ray -config=/v2ray/config.json >out.txt 2>&1 &
