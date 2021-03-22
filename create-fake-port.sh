#!/bin/bash
# Create a fake port/service in server. It's to confuse the hacker
# Gabriel Richter <gabrielrih@gmail.com
# 2017-05-25
#

usage="Usage: $0 [port]
[port] Fake port to create"

[ "$1" == "" ] && { echo "$usage"; exit 1; }
fakePort=$1

while :; do
  # The urandom return garbage in all conexions
  cat /dev/urandom | nc -lkvvp $fakePort
done

exit 0
