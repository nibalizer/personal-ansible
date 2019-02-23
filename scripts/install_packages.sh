#!/bin/bash
apt-get update

cat packages.yaml | egrep '^ *-' | awk '{print $NF}' | xargs
cat packages.yaml | egrep '^ *-' | awk '{print $NF}' | xargs apt install -y

apt autoremove -y
