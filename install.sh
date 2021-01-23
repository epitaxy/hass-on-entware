#!/bin/sh

# This is essential procedures for installation of hass on entware (AC68U:armv7)
# script by JYH (23 Jan. 2021)
# This script was tested on ASUS AC68U router with merlin firmware (v384.19)

opkg update 
opkg upgrade
opkg install python3-dev python3-cffi python3-lxml python3-pillow libjpeg-turbo 
opkg install gcc busybox ldd make gawk sed coreutils-install diffutils libcryptoxx python3-cryptodome

# install requirements for python module compile
wget -qO- http://bin.entware.net/armv7sf-k3.2/include/include.tar.gz | tar xvz -C /opt/include

# source /opt/bin/gcc_env.sh
# opkg install libcryptoxx pip3 install --upgrade passlib bcrypt --upgrade-strategy eager

# libffi and cffi are essentail to install hass on entware
ln -s /opt/lib/libffi.so.7 /opt/lib/libffi.so.6
ln -s /opt/lib/libffi.so.6 /opt/lib/libffi.so

pip3 install --upgrade wheels
pip3 install --upgrade homeassistant

