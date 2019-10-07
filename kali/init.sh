#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
apt install -y zsh terminator

# Setup oh-my-zsh
curl -Lo /tmp/install-zsh.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
chmod +x /tmp/install-zsh.sh
sh /tmp/install-zsh.sh

# Reconfigure SSH
rm -rf /etc/ssh/ssh_host_*
mkdir /root/.ssh && chmod 700 /root/.ssh
cat ../common/ssh/sshkey.pub >> /root/.ssh/authorized_keys && chmod 600 /root/.ssh/authorized_keys
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
dpkg-reconfigure openssh-server
service sshd restart

# Password update
passwd root
