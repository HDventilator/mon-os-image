#!/bin/bash
apt-get -y update && \
apt-get -y install --no-install-recommends \
    git vim parted \
    quilt coreutils qemu-user-static debootstrap zerofree zip dosfstools \
    bsdtar libcap2-bin rsync grep udev xz-utils curl xxd file kmod bc\
    binfmt-support ca-certificates \
