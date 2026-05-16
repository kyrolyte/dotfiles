# Basic Configs

export ENV=$HOME/.ashrc
export PATH=$PATH:/usr/local/bin

# Firefox default downloads

export XDG_DOWNLOAD_DIR="$HOME/downloads"

# Terminal Configs

export TERM=vt220
export GREP_COLORS=
PS1='\u@\h:\w\$ '
alias ls='ls --color=never'
alias grep='grep --color=never'

# Optional: auto-start x with dwm

if[ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec startx
fi

