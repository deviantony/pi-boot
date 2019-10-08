#!/usr/bin/env bash

# https://github.com/derv82/wifite2

export DEBIAN_FRONTEND=noninteractive
apt install -y build-essential libpcap-dev pixiewps cowpatty libssl-dev libcurl4 libcurl4-openssl-dev

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
git clone https://github.com/JPaulMora/Pyrit
cd Pyrit
pip install psycopg2
pip install scapy
python setup.py clean
python setup.py build
python setup.py install

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

exit 0
