#!/usr/bin/env bash
# This script configures an Ubuntu server with the below requirements.
# localhost resolves to 127.0.0.2
# facebook.com resolves to 8.8.8.8

# cp /etc/hosts ~/hosts.new
# sed -i 's/127.0.0.1\tlocalhost/127.0.0.2 localhost\n8.8.8.8 facebook.com/' ~/hosts.new
# cp -f ~/hosts.new /etc/hosts

# OR
# cp /etc/hosts ~/hosts.new
# sed -i 's/.*localhost/127.0.0.2 localhost/g' ~/hosts.new
# sed -i 's/.*facebook.com//g' ~/hosts.new
# sed -i '1 a 8.8.8.8 facebook.com' ~/hosts.new
# cp -f ~/hosts.new /etc/hosts

# OR
cp /etc/hosts new_hosts
sed -i s/^127.*/"127.0.0.2 localhost"/ new_hosts
echo "8.8.8.8 facebook.com" >> new_hosts
cp new_hosts /etc/hosts
