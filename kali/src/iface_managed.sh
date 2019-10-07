#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "usage: ./iface_monitor <interface>"
fi

IFACE=${1}

ifconfig "${IFACE}" down
iwconfig "${IFACE}" mode managed
ifconfig "${IFACE}" up

exit 0
