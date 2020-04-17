gst-launch-1.0 -e -v udpsrc port=5000 caps = "application/x-rtp, media=(string)video, encoding-name=(string)H264" ^
! rtph264depay ! tee name=t ! queue ^
! avdec_h264 ! videoconvert ! autovideosink ^
t. ! h264parse ! splitmuxsink location=vid%%02d.mkv max-size-time=100000000000 muxer=matroskamux