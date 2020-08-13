#!/bin/bash
gst-launch-1.0 v4l2src device=/dev/video2 ! videoconvert ! queue ! x264enc tune=zerolatency ! video/x-h264, stream-format=byte-stream ! rtph264pay ! udpsink host=127.0.0.1 port=5000
