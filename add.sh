#!/bin/bash

# 定义 swap 分区的大小，单位为 MB
SWAP_SIZE=2048

# 用 dd 命令创建一个大小为 $SWAP_SIZE 的空文件
sudo dd if=/dev/zero of=/swapfile bs=1M count=$SWAP_SIZE

# 设置文件的权限
sudo chmod 600 /swapfile

# 将文件设置为 swap 分区
sudo mkswap /swapfile

# 启用 swap 分区
sudo swapon /swapfile

# 让 swap 分区永久生效
echo '/swapfile swap swap defaults 0 0' | sudo tee -a /etc/fstab

# 显示是否完成
sudo swapon --show
