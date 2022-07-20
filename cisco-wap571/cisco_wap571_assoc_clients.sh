#!/bin/bash
# cisco_wap571_assoc_clients.sh <host> <snmp_port> <snmp_community>

# This file goes in <cacti_path>/scripts/
# chmod +x <cacti_path>/scripts/cisco_wap571_assoc_clients.sh

host=$1
port=$2
community=$3

snmptable -Cl -CB -Ci -OX -Cb -Cc 16 -Cw 64 -v2c -c $community $host:$port  CISCO-WLAN-ACCESS-POINT-MIB::apAssocTable|grep index | wc -l
