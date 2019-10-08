#!/usr/bin/env bash

# Prevent network manager from managing wlan1
cat <<EOT >> /etc/NetworkManager/NetworkManager.conf
[keyfile]
unmanaged-devices=interface-name:wlan1
EOT

service network-manager restart

exit 0
