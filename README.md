# add_swap.sh
```wget https://raw.githubusercontent.com/yosukira/add_swap.sh/main/add.sh
chmod +x add.sh
sudo ./add_swap.sh
```
```
SWAP_SIZE=2048
sudo dd if=/dev/zero of=/swapfile bs=1M count=$SWAP_SIZE
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile swap swap defaults 0 0' | sudo tee -a /etc/fstab
```
