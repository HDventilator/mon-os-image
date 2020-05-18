[![Build Status](https://travis-ci.org/HDventilator/mon-os-image.svg?branch=master)](https://travis-ci.org/HDventilator/mon-os-image)
# What is this?

This repo contains all relevant configuration files and scripts to build the HDVent monitoring device software
as raspberry PI image ready for installation.

**This is a protopye. It is not fit for medical use.**

# How to use it

## Installation

* Download latest HDventian image from https://storage.googleapis.com/hdvent-monitoring/index.html?prefix=master/
* Flash to SD-Card (see https://www.raspberrypi.org/documentation/installation/installing-images/README.md )
* Boot Raspberry Pi

## Supported Platform

This image is optimized for Raspberry Pi 3. It should boot on all Raspberries, but older models will not have enough CPU power to correctly display monitoring data.

# Local builds

Building the HDVentian image:
```
./create_images.sh
```

This will take quite some time but you'll end up with the images in the deploy directory:
```
> ls deploy
image_2020-05-06-HDVentian.zip
```

# Developer information
This heavily depends on pi-gen (https://github.com/RPi-Distro/pi-gen) for image generation.

The main config for the generated image is in the "config" file.

The build will do the following:
* Clone/pull pi-gen to a fresh version
* Copy overlay/\* into pi-gen
  * This allows overriding arbitrary files or adding additional build stages
* Run pi-gen with our local config

# TODOs

* Remove unneeded software packages
* Disable wifi/bluetooth/network services
* Better lock-down in kiosk mode
* ...
