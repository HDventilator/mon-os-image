#!/bin/bash -e

install -v -m 644 files/hdvent_frontend.service "${ROOTFS_DIR}/etc/systemd/system/"

on_chroot << EOF
pip3 install git+https://github.com/HDventilator/mon-frontend@deploy
systemctl enable hdvent_frontend
EOF

