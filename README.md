# raspberry_pi_rtsp_camera
Simple RTSP camera with a Rasperry Pi

raspi-config
- enable camera
- give GPU more memory, 128 or more

install uv4l: https://www.linux-projects.org/uv4l/installation/

add uv4l-raspicam.conf to /etc/uv4l

sudo service uv4l_raspicam restart

install vlc `sudo apt-get install vlc`

add cam.service to `/etc/systemd/system`
add cam.sh to `/home/pi`

start the camera
`systemctl start cam`

automatically start the camera on boot
`systemctl enable cam`


