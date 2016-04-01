# Start mjpg-streamer
CUR_DATE=$(date)
echo "====${CUR_DATE}====" >> /home/pi/stream.log
echo "====${CUR_DATE}====" >> /home/pi/stream_error.log
until /home/pi/vision/mjpg_filter.sh
do
	echo $?
	sleep 1
	killall java
done
# mjpg_streamer -o "output_http.so -w /home/pi/vision/mjpg-streamer/mjpg-streamer-experimental/www -p 5801" -i "input_uvc.so -d /dev/video1 -f 15 -r 320x240 -n" &
