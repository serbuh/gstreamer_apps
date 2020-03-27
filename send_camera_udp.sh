#!/bin/bash

if [ "$1" == "" ]; then
    IP="127.0.0.1"
else
    IP=$1
fi

echo "Sending UDP stream to" $IP

gst-launch-1.0 nvarguscamerasrc ! 'video/x-raw(memory:NVMM),width=3820, height=2464, framerate=21/1, format=NV12' ! nvvidconv flip-method=2 ! 'video/x-raw,width=960, height=616' ! nvvidconv ! queue ! x264enc speed-preset=superfast tune=zerolatency ! h264parse ! rtph264pay ! udpsink host=$IP port=5000 sync=false

