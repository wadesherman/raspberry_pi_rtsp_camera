#!/bin/bash
while [ 1 ]
do
    python3 ./overlay.py
    v4l2-ctl --set-ctrl=text_overlay=1
    sleep 0.5
done
