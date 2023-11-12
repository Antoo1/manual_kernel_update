#!/bin/bash

add-apt-repository ppa:cappelikan/ppa

apt update -y
apt install -y mainline
mainline --install-latest
# Remove older kernels (Only for demo! Not Production!)
rm -f /boot/*5.4*

reboot now
