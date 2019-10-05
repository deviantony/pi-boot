#!/usr/bin/env bash

apt install -y zsh terminator

# Setup oh-my-zsh
curl -Lo /tmp/install-zsh.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
chmod +x /tmp/install-zsh.sh
sh /tmp/install-zsh.sh

# Clean-up server SSH keys
rm -rf /etc/ssh/ssh_host_*
dpkg-reconfigure openssh-server

# Password update
passwd root
