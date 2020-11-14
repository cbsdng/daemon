#!/bin/sh


pkg install -y ccache cli11 replxx
cat << EOF >/etc/make.conf
NO_CLEAN=YES
WITH_CCACHE_BUILD=YES
CCACHE_DIR=/usr/home/devel/.ccache
SU_CMD=/usr/local/bin/sudo -E sh -c
EOF
