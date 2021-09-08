#!/bin/sh

if [ -n "$WEBIDE" ]; then
  xpra start --start=xterm --bind-tcp=0.0.0.0:10080 --daemon=no --mdns=no
elif [ "$(tty)"=="/dev/pts/0" ];then
  /bin/idea
fi
