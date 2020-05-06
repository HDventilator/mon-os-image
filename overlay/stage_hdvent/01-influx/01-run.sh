#!/bin/bash -e

install -m 644 files/influx.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"
sed -i "s/RELEASE/${RELEASE}/g" "${ROOTFS_DIR}/etc/apt/sources.list.d/influx.list"

on_chroot apt-key add - < files/influxdb.key
on_chroot << EOF
apt-get update
apt-get install influxdb  
systemctl enable influxdb
EOF

