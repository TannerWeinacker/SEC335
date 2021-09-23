#!/bin/bash
host=$1
port=$2
echo "host,port"
  for ip in $(seq 1 254); do
   host=$1.$ip
     timeout .1 bash -c  "echo >/dev/tcp/$host/$port" 2>/dev/null &&
       echo "Host: $host Port: $port"
  done



