#!/bin/bash
# unblock.sh - restore normal hosts and open Twitter

NORMAL_HOSTS="./hosts-normal"

cp "$NORMAL_HOSTS" /etc/hosts

dscacheutil -flushcache
killall -HUP mDNSResponder

echo "$(date): Sites unblocked." >> /var/log/blocksites.log
