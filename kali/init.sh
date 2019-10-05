#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
apt install -y zsh terminator bluetooth blueman

# Setup oh-my-zsh
curl -Lo /tmp/install-zsh.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
chmod +x /tmp/install-zsh.sh
sh /tmp/install-zsh.sh

# Clean-up server SSH keys
rm -rf /etc/ssh/ssh_host_*
dpkg-reconfigure openssh-server

# Bluetooth
systemctl enable bluetooth

# Password update
passwd root
