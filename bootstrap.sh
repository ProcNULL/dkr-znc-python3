#! /usr/bin/env bash
set -e

# Config
ZNC_VERSION="1.6.0"

# Install runtime and build dependencies.
apt-get update
apt-get install -y sudo
apt-get install -y wget build-essential libssl-dev libperl-dev pkg-config python3-dev libicu-dev

# Download, compile and install ZNC.
mkdir -p /src
cd /src
wget "http://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz"
tar -zxf "znc-${ZNC_VERSION}.tar.gz"
cd "znc-${ZNC_VERSION}"
./configure --enable-python && make && make install

# Clean up
apt-get remove -y wget
apt-get autoremove -y
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
