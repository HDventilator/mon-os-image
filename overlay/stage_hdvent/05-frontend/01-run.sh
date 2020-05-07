#!/bin/bash -e

on_chroot << EOF
pip3 install git+https://github.com/HDventilator/mon-frontend@deploy
EOF

