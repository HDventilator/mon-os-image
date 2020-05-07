#!/bin/bash -e

install -v -m 644 files/hdvent_receiver.service "${ROOTFS_DIR}/etc/systemd/system/"

on_chroot << EOF
pip3 install git+https://github.com/HDventilator/mon-receiver.git@master
systemctl enable hdvent_receiver
EOF

