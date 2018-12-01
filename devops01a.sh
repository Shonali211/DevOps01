#/bin/bash
df -h
nproc --all
grep MemTotal /proc/meminfo | awk '{print $2}'
ipconfig
