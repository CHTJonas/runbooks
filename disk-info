#! /bin/bash

[ ! "$@" ] && echo "Usage: $0 /dev/sdx"
for disk in "$@"; do
  hdparm -I $disk
done
