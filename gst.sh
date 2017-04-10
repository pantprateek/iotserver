#!/bin/sh

ssh -i "test2.pem"  -f -N  -R 9001:localhost:9001  ubuntu@ec2-184-73-145-142.compute-1.amazonaws.com
gst-launch-1.0 -vv -e v4l2src device=/dev/video0  ! videoconvert ! vp8enc cpu-used=5 deadline=1 keyframe-max-dist=10 ! queue leaky=1 ! m. autoaudiosrc ! audioconvert ! vorbisenc ! queue leaky=1 ! m.  webmmux name=m streamable=true ! queue leaky=1 ! tcpserversink host=127.0.0.1 port=9001 sync-method=1
#ssh -T -O "exit" $HOST
