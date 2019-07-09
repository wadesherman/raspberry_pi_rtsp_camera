# raspberry_pi_rtsp_camera
Simple RTSP camera with a Rasperry Pi

# setup
raspi-config
- enable camera
- give GPU more memory, 128 or more
- set locale, country, time, etc.

#uv4l
- install uv4l: https://www.linux-projects.org/uv4l/installation/
- add uv4l/uv4l-raspicam.conf to /etc/uv4l
- restart uv4l `sudo service uv4l_raspicam restart`
- install vlc `sudo apt-get install vlc`

#rtsp server
- add camera/cam.service to `/etc/systemd/system`
- add camera/cam.sh to `/home/pi`
- start the camera `systemctl start cam`
- automatically start the camera on boot `systemctl enable cam`

#timestamp overlay
- add uv4l/overlay.service to `/etc/systemd/system`
- add uv4l/overlay.py to `/home/pi`
- add uv4l/overlay.sh to `/home/pi`
- start the overlay `systemctl start overlay`
- automatically start the overlay on boot `systemctl enable overlay`
