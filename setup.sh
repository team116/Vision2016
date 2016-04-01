#!/bin/bash

# install dependencies
apt-get update
apt-get -y install git cmake libjpeg8-dev oracle-java8-jdk

cd /home/pi
ln -s Vision2016 vision

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
