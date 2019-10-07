#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
apt install -y bluetooth blueman

# Bluetooth
systemctl enable bluetooth

exit 0
