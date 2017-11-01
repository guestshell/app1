#!/bin/bash
export LAN_IFACE_NAME=`ip addr | grep -i broadcast | awk '{ print $2 }'| sed 's/:/\ /g' | head -1`
arp-scan --interface=$LAN_IFACE_NAME --localnet
