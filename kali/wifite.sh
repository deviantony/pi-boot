#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
apt install -y build-essential libpcap-dev pixiewps

cd /tmp
git clone https://github.com/derv82/wifite2.git
cd wifite2
python setup.py install

cd /tmp
git clone https://github.com/t6x/reaver-wps-fork-t6x
cd reaver-wps-fork-t6x/src
sh configure
make
make install


exit 0
