#!/bin/bash
export LAN_IFACE_NAME=`ip addr | grep -i broadcast | awk '{ print $2 }'| sed 's/:/\ /g' | head -1`
echo "Interface connected to local network is : $LAN_IFACE_NAME"
arp-scan --interface=$LAN_IFACE_NAME --localnet
