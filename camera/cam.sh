#!/bin/bash
dd if=/dev/video0 bs=1M | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/stream,caching=100}' --demux=h264
