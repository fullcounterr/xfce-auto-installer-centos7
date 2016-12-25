#!/bin/bash

# This script has been tested on Centos 7, it may not work for other linux, you need to modify it yourself
# Install the Xfce Desktop Environment
yum groupinstall "Xfce" -y

# Install the VNC server
yum install tigervnc-server -y

# Adduser vncme
adduser vncme

# Password for the vnc
# Optional : Add VNC server to application startup list on port 5901
# Default ort numbering is 5900 + x
# cp /lib/systemd/system/vncserver@.service /etc/systemd/system/vncserver@\:1.service

#rm /home/vncme/.vnc/xstartup
#touch /home/vncme/.vnc/xstartup

#FILE="/home/vncme/.vnc/xstartup"

#/bin/cat <<EOM >$FILE
#!/bin/sh
#unset SESSION_MANAGER
#unset DBUS_SESSION_BUS_ADDRESS
#exec /etc/X11/xinit/xinitrc
#exec /bin/sh /etc/xdg/xfce4/xinitrc
#EOM
