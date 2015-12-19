#!/bin/sh

echo deb http://deb.torproject.org/torproject.org wheezy main >> /etc/apt/sources.list.d/tor.list
echo deb-src http://deb.torproject.org/torproject.org wheezy main >> /etc/apt/sources.list.d/tor.list

gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -

apt-get update
apt-get install -y build-essential fakeroot devscripts
apt-get build-dep -y tor deb.torproject.org-keyring

mkdir -p /debian-packages
cd /debian-packages || echo ERROR: /debian-packages does not exist!; exit 1

apt-cache clean && rm -rf /var/lib/apt/lists
