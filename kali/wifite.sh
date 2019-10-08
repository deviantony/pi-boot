#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
apt install -y build-essential libpcap-dev pixiewps cowpatty libopenssl openssl-dev zlib zlib-dev libcurl curl-dev libpthread pthread-dev librt librt-dev

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

cd /tmp
git clone https://github.com/ZerBea/hcxdumptool.git
cd hcxdumptool
make
make install

cd /tmp
git clone https://github.com/ZerBea/hcxtools.git
cd hcxtools
make
make install

cd /tmp
git clone https://github.com/hashcat/hashcat.git
cd hashcat
make
make install

exit 0
