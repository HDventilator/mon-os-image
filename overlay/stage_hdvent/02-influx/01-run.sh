#!/bin/bash -e

install -v -m 644 files/97-influx.conf "${ROOTFS_DIR}/etc/sysctl.d/"
install -v -m 644 files/hdvent.service "${ROOTFS_DIR}/etc/systemd/system/"
install -v -m 777 files/create_influx_db.sh "${ROOTFS_DIR}/usr/bin/"

install -m 644 files/influx.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"
sed -i "s/RELEASE/${RELEASE}/g" "${ROOTFS_DIR}/etc/apt/sources.list.d/influx.list"

on_chroot apt-key add - < files/influxdb.key
on_chroot << EOF
apt-get update
apt-get install influxdb  
systemctl enable influxdb
systemctl enable hdvent
EOF

install -v -m 644 files/influxdb.conf "${ROOTFS_DIR}/etc/influxdb/"

