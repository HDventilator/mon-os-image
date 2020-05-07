#!/bin/bash -e
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/lxsession/LXDE"
install -v -o 1000 -g 1000 -m 644 files/autostart "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/lxsession/LXDE/"
