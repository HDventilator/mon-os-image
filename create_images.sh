#!/bin/bash
set -e

# get pi-gen if not here yet
[ ! -d pi-gen ] && git clone https://github.com/RPi-Distro/pi-gen.git

# add all overlay stages
cp -r overlay/* pi-gen

# let's go
#pi-gen/build-docker.sh -c config
cp config pi-gen
cd pi-gen
sudo build.sh -c config
