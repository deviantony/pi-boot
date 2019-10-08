#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "usage: ./iface_monitor <interface>"
    exit 1
fi

IFACE=${1}

ifconfig "${IFACE}" down
iwconfig "${IFACE}" mode monitor
ifconfig "${IFACE}" up

exit 0
