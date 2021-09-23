#!/bin/bash
network_prefix=$1
dns_server=$2
echo "DNS resolution for $network_prefix"
  for ip in $(seq 1 254); do
    network_prefix=$1.$ip
     nslookup $network_prefix $dns_server | grep "name = "
  done
