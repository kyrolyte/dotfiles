export ENV=$HOME/.ashrc
export PATH=$PATH:/usr/local/bin

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec startx
fi

