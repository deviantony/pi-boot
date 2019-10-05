#!/usr/bin/env bash

apt install -y zsh

curl -Lo /tmp/install-zsh.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
chmod +x /tmp/install-zsh.sh
sh /tmp/install-zsh.sh

echo "Done"
