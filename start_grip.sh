#!/bin/bash
# Start processing
CUR_DATE=$(date)
echo "====${CUR_DATE}====" >> /home/pi/grip.log
echo "====${CUR_DATE}====" >> /home/pi/grip_error.log
until env LD_LIBRARY_PATH=/home/pi/vision/grip/libraries:LD_LIBRARY_PATH java -jar /home/pi/vision/grip/grip.jar /home/pi/vision/grip/project.grip >> /home/pi/grip.log 2>> /home/pi/grip_error.log
do
	sleep 1
done
