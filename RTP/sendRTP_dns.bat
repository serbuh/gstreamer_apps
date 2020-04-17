gst-launch-1.0 autovideosrc ! videoconvert ^
! queue ! x264enc tune=zerolatency ^
! video/x-h264, stream-format=byte-stream ! rtph264pay ^
! udpsink host="foobar.ddns.net" port=5000
