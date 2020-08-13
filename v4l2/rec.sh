#!/bin/bash
gst-launch-1.0 -e -v udpsrc port=5000 caps = "application/x-rtp, media=(string)video, encoding-name=(string)H264" ! rtph264depay ! avdec_h264 ! videoconvert ! ximagesink
