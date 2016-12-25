# xfce-auto-installer-centos7

Bash script for installing Xfce along with VNC server. Root account required.

### Using the script

Download the installer.sh using command below :

```sh
$ cd
$ git clone https://github.com/fullcounter/xfce-auto-installer-centos7
$ cd xfce-auto-installer-centos7
$ chmod +x installer.sh
$ ./installer.sh
```

The script will install Xfce environment and VNC server, and a vnc user called vncme.

I'll make these steps automatic later, but for now you need to manually do it.
Next step is to add vncpassword to user vncme by adding command below :

```bash
$ vncpasswd vncme
$ Password :
$ Verify Passowrd :
```

Modify /home/vncme/.vnc/xstartup using your favorite text editor. In this case, I'll use nano for editing it :

```sh
$ nano /home/vncme/.vnc/xstartup
```

Replace anything inside it with codes below. It will replace current environment when VNC launched to Xfce.

```sh
#!/bin/sh
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
#exec /etc/X11/xinit/xinitrc
exec /bin/sh /etc/xdg/xfce4/xinitrc
```

Finally login to your vncme account and start the VNC server

```sh
$ login vncme
$ Password :
$ vncserver
```

That's it. You can access the VNC through your local IP if you're on LAN or on your public IP address on port 5901. 

More to comes.
