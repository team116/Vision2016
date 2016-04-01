#!/bin/bash
v4l2-ctl -c brightness=30,contrast=0,saturation=200,white_balance_temperature_auto=0
v4l2-ctl -c white_balance_temperature=10000
export LD_LIBRARY_PATH=/home/pi/vision/mjpg-streamer/mjpg-streamer-experimental
mjpg_streamer -o "output_http.so -w /home/pi/vision/mjpg-streamer/mjpg-streamer-experimental/www -p 5800" -i "input_uvc.so -d /dev/video0 -f 30 -r 640x360 -n" >> /home/pi/stream.log 2>> /home/pi/stream_error.log
