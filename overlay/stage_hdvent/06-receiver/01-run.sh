#!/bin/bash -e

on_chroot << EOF
pip3 install git+https://github.com/HDventilator/mon-receiver.git@master
EOF

