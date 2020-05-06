
# get pi-gen
[ ! -d pi-gen ] && git clone https://github.com/RPi-Distro/pi-gen.git

pi-gen/build-docker.sh -c config
