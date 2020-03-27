#!/bin/bash

gst-launch-1.0 udpsrc port=5000 ! application/x-rtp, encodingname=H264, payload=96 ! rtph264depay ! h264parse ! avdec_h264 ! xvimagesink sync=false async=false -e
