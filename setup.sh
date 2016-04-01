#!/bin/bash

# install dependencies
apt-get update
apt-get install git cmake libjpeg8-dev

cd /home/pi
ln -s Vision-2016 vision

if cd vision
then
	# set up mjpg-streamer
	git clone https://github.com/jacksonliam/mjpg-streamer.git
	cd mjpg-streamer/mjpg-streamer-experimental
	make clean all
	make install

	cd www
	ln -s ../../../CameraFeeds.html CameraFeeds.html
else
	echo "Vision-2016 must be cloned to /home/pi" 1>&2
fi