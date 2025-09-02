#!/bin/bash

# path to your prepared blocked hosts file
BLOCKED_HOSTS="./hosts-blocked"

# copy over
cp "$BLOCKED_HOSTS" /etc/hosts

# flush DNS cache
dscacheutil -flushcache
killall -HUP mDNSResponder

echo "$(date): Sites blocked." >> /var/log/blocksites.log
